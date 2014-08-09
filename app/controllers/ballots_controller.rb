class BallotsController < ApplicationController
  def index
      @ballots = current_user.ballots.all
      @ballot = current_user.ballots.new
    end

    def new
      
        @propositions = Proposition.where(:date => @ballot.date)
    end  

    def show
      @ballot = current_user.ballots.find(params[:id])
      @propositions = Proposition.where(:date => @ballot.date)
      @comment = Comment.new

    end

    def saved
      @ballot = current_user.ballots.find(params[:id])
      @propositions = Proposition.where(:date => @ballot.date)
          
      @comments = Comment.all
    end
   

    def create
      @ballot = current_user.ballots.new(params.require(:ballot).permit(:state, :city, :date, :user_id))
      if @ballot.save
        redirect_to ballots_path
      else
        render 'new'
      end
    end



  def edit
    @ballot = current_user.ballots.find(params[:id])
  end

  def update
    @ballot = current_user.ballots.find(params[:id])
    if @ballot.update_attributes(params.require(:ballot).permit(:state, :city, :date))
        redirect_to ballots_path
      else
        render 'edit'
      end
  end

  def destroy
    @ballot = current_user.ballots.find(params[:id]).destroy
    redirect_to ballots_path
  end
end
