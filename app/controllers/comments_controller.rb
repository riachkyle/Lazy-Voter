class CommentsController < ApplicationController
    before_action :get_prop
   

   def index
    @comments = Comment.all
   end

   def create
    comment = Comment.new(params.require(:comment).permit(:text, :proposition_id, :user_id, :ballot_id))
    comment.proposition = @proposition
    comment.user = current_user
      if comment.save
        redirect_to :back
      else
            # render 'new'
      end
    end



   def edit
      @comment = Comment.find(params[:id])

  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params.require(:comment).permit(:name, :address, :description, :group_id))
      redirect_to root_path
    else
      # render 'edit'
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to root_path
  end



private
  def get_prop
    # Find our parent decision that we should attach to
    @proposition = Proposition.find(params[:proposition_id])
  end  

end
