class MemesController < ApplicationController
  def index
    @memes = Meme.all.order(:created_at)

    render json: @memes
  end

  def show
    @meme = Meme.find(params[:id])
   render :json => @meme.to_json(:include => :comments)
  end

  def create
    @meme = Meme.create!(meme_params)

    render json: @meme
  end

  def update
    @meme = Meme.find(params[:id])
    @meme.update!(meme_params)

    render json: @meme
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy

  end

  private
  def meme_params
    params.require(:meme).permit(:text, :img_url)
  end

end
