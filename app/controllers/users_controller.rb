class UsersController < ApplicationController

  def users_params
    params.require(:user).permit(:user_id, :email, :session_token, :timestamps)
  end

  def new
    # default: render 'new' template
  end

  def create
    @user = User.create!(user_params)
    flash[:notice] = "Welcome #{@user.user_id}. Your account has been created."
    redirect_to movies_path
  end
end
