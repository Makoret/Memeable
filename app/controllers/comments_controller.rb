class CommentsController < ApplicationController
  def create
    meme = Meme.find(params[:meme_id])
    comment_params
    body = comment_params[:body]
    comment = Comment.new(user: current_user, meme: meme, body: body)
    if comment.save
      redirect_to meme_path(meme)
    else
      redirect_to meme_path(meme), alert: 'We could not post your comment'
    end
  end

  protected
  def comment_params
    params.require(:comment).permit(:body)
  end
end
