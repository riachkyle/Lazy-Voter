class PropositionsController < ApplicationController
before_action :get_ballot

  def index
      @propositions = @ballot.propositions

    end

    def show
      @proposition = Proposition.find(params[:id])
    end

    def new
      @proposition = Proposition.new
      
    end  

    def create
      proposition = Proposition.new(params.require(:proposition).permit(:propid, :date, :ballot_id))
      proposition.ballot = @ballot
      if proposition.save
      redirect_to ballot_propositions_path(@ballot.id)
      end
    end



  def edit
    @proposition = Proposition.find(params[:id])
  end

  def update
    @proposition = Proposition.find(params[:id])
    if @proposition.update_attributes(params.require(:proposition).permit(:state, :city, :date))
        redirect_to ballots_path
      else
        render 'edit'
      end
  end

  def destroy
    @proposition = Proposition.find(params[:id]).destroy
    redirect_to ballots_path
  end
end

private
  def get_ballot
    # Find our parent decision that we should attach to
    @ballot = Ballot.find(params[:ballot_id])
  end


