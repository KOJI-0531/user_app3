class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(email: params[:email], password: params[:password])
    if @user.save
      redirect_to("/index")
    end
  end
  
  def index
    @users = User.all.order(created_at: :desc)
  end
  
end
