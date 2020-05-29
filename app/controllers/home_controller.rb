class HomeController < ApplicationController
  def index
    @memes = Meme.all
  end

  def memes_by_category
    @memes_by_category = Meme.all.group_by { |meme| meme.category.name }
  end

  def memes_by_popularity

  end
end
