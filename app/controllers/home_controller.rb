class HomeController < ApplicationController
  def index
    result = Meme.all
    @memes_by_date = result.group_by { |meme| meme.created_at.to_date }
  end

  def memes_by_category
    
  end
  
  def memes_by_popularity
    
  end
end
