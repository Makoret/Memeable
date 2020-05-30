class MemesController < ApplicationController
  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    @meme.owner = current_user
    if @meme.save
      redirect_to meme_path(@meme)
    else
      render :new
    end
  end

  def show
    @meme = Meme.find(params[:id])
    @vote = Vote.find_by(user: current_user, meme: @meme)
  end

  private
  def meme_params
    params.require(:meme).permit(:title, :url_source, :category_id, :owner)
  end
end
