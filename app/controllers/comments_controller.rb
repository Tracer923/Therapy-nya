class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = current_user.comments.new(comment_params)
    comment.post_id = post.id
    comment.save
    post.create_notification_comment!(current_user, comment.id)
    redirect_to request.referer
  end

  def destroy
    # @post = Post.find(params[:post_id])
    Comment.find_by(id: params[:id], post_id: params[:post_id]).destroy
    redirect_to request.referer
  end

  private

  def comment_params
    params.permit(:content)
  end
end
