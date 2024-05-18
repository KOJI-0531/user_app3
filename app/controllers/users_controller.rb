class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
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
    # @user.email = params[:user][:email]
    # @user.save
    @user.update(update_user_params)
    puts "エラー: #{@user.errors.full_messages}"
    redirect_to("/index")
  end
  
 def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to("/index")
 end
 
 def login_form
 end
 
 def login
    @user = User.find_by(login_user_params)
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end
  
   def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end
 
 private
  def user_params
    # email: params[:email], password: params[:password]
    #params.permit(:email, :password)
    params.require(:user).permit(:email,:password)
  end
  
  def update_user_params
    params.require(:user).permit(:email)
  end
  
   def login_user_params
    params.require(:user).permit(:email,:password)
  end
  
end
