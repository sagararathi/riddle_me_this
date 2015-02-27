class SessionsController < ApplicationController
  skip_before_filter :ensure_current_user

  def index
    # if current_user
    #   render :'riddles/index'
    # else
    #   redirect_to login_path
    # end
  end

  def new
    @user = User.new
  end

  def create
    new_user = User.new(allowed_params)

    if new_user.save
      session[:user_id] = new_user.id
      redirect_to riddles_path
    else
      redirect_to signup_new_path
    end
  end

  def login
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to riddles_path
    else
      redirect_to login_form_path
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

  private

  def allowed_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end