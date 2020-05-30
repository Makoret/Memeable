module ApplicationHelper
  def has_voted?(meme)
    if current_user.voted_memes.include?(meme)
      return true
    else
      return false
    end
  end
end
