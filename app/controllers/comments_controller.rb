class CommentsController < ApplicationController
  def index
    @comments = Comment.all


    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
   render json: @comment
  end

  def create
    @meme = Meme.find(params[:meme_id])
    @comment = @meme.comments.create!(comment_params)

    render json: @comment
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update!(comment_params)

    render json: @comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
