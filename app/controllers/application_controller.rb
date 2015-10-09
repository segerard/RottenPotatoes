
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def set_current_user
    #@current_user||=session[:session_token] && User.find_by_session_token(session[:session_token])
    @current_user ||=User.find_by_session_token(session[:session_token])
    if(@current_user)
      flash[:notice] = "You are logged in as #{@current_user.user_id}."
#      render action: 'show', notice: 'Hi'
    else
      
    end
  end
end

