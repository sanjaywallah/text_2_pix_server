class CommentsController < ApplicationController
  def index
    @meme = Meme.find(params[:meme_id])
    @comments = @meme.comments.order(:created_at)

    render json: @comments
  end
  def create
    @meme = Meme.find(params[:meme_id])
    @comment = @meme.comments.create!(comment_params)

    render json: @comment
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
