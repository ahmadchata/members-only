class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(posts_params)
    if @post.save
      flash[:notice] = 'Post was created successfully'
      redirect_to posts_path
    else
      flash[:alert] = 'Oops!! Something Wrong'
      render 'new'
    end
  end

  private

  def posts_params
    params.require(:post).permit(:title, :body)
  end
end
