class VotesController < ApplicationController
  def create
    meme = Meme.find(params[:meme_id])
    vote = Vote.new(user: current_user, meme: meme)
    if vote.save
      redirect_to meme_path(meme)
    else
      redirect_to meme_path(meme), alert: 'It was not possible to add a vote.'
    end
  end

  def destroy
    meme = Meme.find(params[:meme_id])
    @vote = Vote.find_by(id: params[:id], user: current_user, meme: meme)
    if @vote.destroy
      redirect_to meme_path(meme)
    else
      redirect_to meme_path(meme), alert: 'It was not possible to remove the vote.'
    end
  end
end
