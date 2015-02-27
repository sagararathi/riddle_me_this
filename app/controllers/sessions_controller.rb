class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @new_user = User.new(params[:user])

    if @user.save
      session[:user_id] = @new_user.id
      redirect_to root_path
    else
      redirect_to signup_new_path
    end
  end

  def login
    @user = User.find_by(params[:user][:name])

    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end

end