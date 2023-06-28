class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    @post = Post.new
    @comment = Comment.new
    @comments = Comment.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post)
    else
      @posts = Post.all
      render :index  # エラー時には同じページを表示
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "投稿が削除されました"
  end
  
  
  
    private

  def post_params
    params.require(:post).permit(:id, :content)
  end
end
