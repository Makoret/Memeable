class MemesController < ApplicationController
  def new
  end

  def show
    @meme = Meme.find(params[:id])
  end
end
