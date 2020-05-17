class PostsController < ApplicationController
  def index
   @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
   
  end


  private
  def post_params
    params.require(:post).permit(:body, :image).merge(user_id: current_user.id)
  end

end