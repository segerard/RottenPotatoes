class UsersController < ApplicationController

  def users_params
    params.require(:user).permit(:user_id, :email, :session_token, :timestamps)
  end
  
  def new
    # default: render 'new' template
  end

  def create
    check_user_id = User.find params[:user_id] 
    if(check_user_id == nil)
      flash[:notice] = "Sorry, this user-id is taken. Try again."
      redirect_to new_user_path
    else
      User.create_user!()
      @user = User.create!(user_params)
      flash[:notice] = "Welcome #{@user.user_id}. Your account has been created."
      redirect_to movies_path
    end
  end
end
