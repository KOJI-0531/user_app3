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
  
  def show
    @user = User.find_by(id: params[:id])
  end
  
   def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    @user.email = params[:email]
    @user.save
    redirect_to("/index")
  end
  
 def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to("/index")
 end
  
end
