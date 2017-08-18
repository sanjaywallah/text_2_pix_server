class CommentsController < ApplicationController

  def create
    @meme = Meme.find(params[:meme_id])
    @comment = @meme.comments.create!(comment_params)

    render json: @comment
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :meme_id)
  end
end
