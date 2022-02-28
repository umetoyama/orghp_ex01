class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast "comment_channel", comment: @comment, user: @@comment.user}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, topic_id: params[:topic_id])
  end

end
