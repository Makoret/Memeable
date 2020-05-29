class HomeController < ApplicationController
  def index
    @memes = Meme.all
  end

  def memes_by_category
    
  end
  
  def memes_by_popularity
    @popular_memes = Meme.all.order(:votes_count)
  end
end
