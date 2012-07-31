class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery
  
  protected

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.present? ? user.id : nil
  end

  def logged_in?
    !!current_user
  end

  def require_current_user
    redirect_to root_url unless logged_in?
  end
end
