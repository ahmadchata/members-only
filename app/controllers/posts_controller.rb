class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
  @post = Post.new(posts_params)
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
