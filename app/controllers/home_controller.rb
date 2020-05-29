class HomeController < ApplicationController
  def index
    @memes = Meme.all
  end

  def memes_by_category
    
  end
  
  def memes_by_popularity
    
  end
end
