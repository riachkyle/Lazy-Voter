class YesnosController < ApplicationController
  before_action :get_prop

   def create
    puts ' _____'
    puts '< moo >'
    puts ' -----'
    puts '        \   ^__^'
    puts '         \  (xo)\_______'
    puts '            (__)\       )\/\''
    puts '                ||----w |'
    puts '                ||     ||'
    yesno = Yesno.where(proposition_id: params[:proposition_id], user_id: params[:user_id], ballot_id: params[:ballot_id]).last
    if yesno.class != NilClass
      #huh = yesno.update(params.require(:yesno).permit(:choice, :proposition_id, :user_id, :ballot_id))
      huh = yesno.update(choice: params[:choice])
      puts "HUH?! #{huh}"
      redirect_to users_path

    else
      puts "moo"
      yesno = Yesno.new(params.require(:yesno).permit(:choice, :proposition_id, :user_id, :ballot_id))
      yesno.proposition = @proposition
      yesno.user = current_user

      if yesno.save
        redirect_to :back
      else
        # render 'new'
      end
    end
  end



   def edit
      @yesno = Yesno.find(params[:id])

  end

  def update
    @yesno = Yesno.find(params[:id])
    if @yesno.update_attributes(params.require(:yesno).permit(:name, :address, :description, :group_id))
      redirect_to root_path
    else
      # render 'edit'
    end
  end

  def destroy
    yesno.find(params[:id]).destroy
    redirect_to root_path
  end



private
  def get_prop
    # Find our parent decision that we should attach to
    @proposition = Proposition.find(params[:proposition_id])
  end  
end
