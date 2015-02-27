module Authentication
  def current_user
    @user ||= user.find(session[:user_id]) if session[:user_id]
  end

  def login(user)
    session[:user_id] = user.id
  end
end