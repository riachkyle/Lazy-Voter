class BallotsController < ApplicationController
  def index
    my_ballot_filter = params[:ballotfilter]
    case my_ballot_filter
      when "08/04/2014"
         @ballots = Ballot.where(:date => "08/04/2014", :user_id => nil)
      when "08/05/2014"
         @ballots = Ballot.where(:date => "08/05/2014", :user_id => nil)  
      else
         @ballots = Ballot.where(:date => "08/04/2014", :user_id => nil)
    end
      @ballot = Ballot.new
      @current_user = current_user
  
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
    end
   

    def create
      ballot = Ballot.new(params.require(:ballot).permit(:state, :city, :date, :user_id))
      ballot.user = current_user
      if ballot.save
        redirect_to ballot_path(ballot.id)
      else
        render 'new'
      end
    end



  def edit
    @ballot = current_user.ballots.find(params[:id])
    @propositions = Proposition.where(:date => @ballot.date)
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
