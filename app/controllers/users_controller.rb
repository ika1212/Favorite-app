class UsersController < ApplicationController
  layout 'user-show', only: :show
  def index
    @users = User.all
  end

  def show 
    @user = User.find(params[:id])
  end
end
