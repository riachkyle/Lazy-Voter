class BallotsController < ApplicationController
  def index
      @ballots = Ballot.all
    end

    def show
      @ballot = Ballot.find(params[:id])
    end

    def new
    @ballot = Ballot.new
    end  

    def create
      @ballot = Ballot.new(params.require(:ballot).permit(:state, :city, :date))
      if @ballot.save
        redirect_to users_path
      else
        render 'new'
      end
    end

  def edit
    @ballot = Ballot.find(params[:id])
  end

  def update
    @ballot = Ballot.find(params[:id])
    if @ballot.update_attributes(params.require(:ballot).permit(:state, :city, :date))
        redirect_to ballots_path
      else
        render 'edit'
      end
  end

  def destroy
    @ballot = Ballot.find(params[:id]).destroy
    redirect_to ballots_path
  end
end
