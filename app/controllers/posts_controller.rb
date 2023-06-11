class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path  # 投稿後に投稿一覧ページにリダイレクト
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
  end
  
  
  
    private

  def post_params
    params.require(:post).permit(:id, :content)
  end
end
