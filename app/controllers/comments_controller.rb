class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @topic = Topic.find(params[:topic_id])

    if @comment.save
      # redirect_to item_path(params[:item_id])
      # ActionCable.server.broadcast "comment_channel", {comment: @comment, user: @comment.user}
      CommentChannel.broadcast_to @topic, { comment: @comment, user: @comment.user }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, topic_id: params[:topic_id])
  end

end
