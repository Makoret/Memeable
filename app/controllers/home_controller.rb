class HomeController < ApplicationController
  def index
    memes_by_date = Meme.all.group_by do
      |meme| meme.created_at.to_date.strftime("%A, %B %d")
    end
    @memes = memes_by_date
  end

  def memes_by_category
    memes_by_category = Meme.all.group_by { |meme| meme.category.name }
    @memes = memes_by_category
  end

  def memes_by_popularity
    memes_by_popularity = Meme.all.order(:votes_count)
    @memes = { 'Most popular memes' => memes_by_popularity }
  end
end
