class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :create]
  def index
   @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def show 
    @post = Post.find(params[:id])
    @like = Like.new
  end

  def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
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