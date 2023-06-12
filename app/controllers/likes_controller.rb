class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    like = @post.likes.build(user_id: current_user.id)
    if like.save
      redirect_to posts_path, notice: 'いいね！'
    else
      redirect_to posts_path, alert: 'いいねに失敗しました。'
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    like = @post.likes.find_by(user_id: current_user.id)
    if like
      like.destroy
      redirect_to posts_path, notice: 'いいねを取り消しました。'
    else
      redirect_to posts_path, alert: 'いいねの取り消しに失敗しました。'
    end
  end
end
