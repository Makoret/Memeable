class HomeController < ApplicationController
  def index
    result = Meme.all
    @memes_by_date = result.group_by { |meme| meme.created_at.to_date }
  end

  def memes_by_category
    @memes_by_category = Meme.all.group_by { |meme| meme.category.name }
  end

  def memes_by_popularity
    @popular_memes = Meme.all.order(:votes_count)
  end
end
