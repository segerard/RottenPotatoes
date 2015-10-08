class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:user_id, :email)
  end
  
  def new
    # default: render 'new' template
  end

  def create
      @user = User.create_user! (user_params)
      if(User.exists?(:user_id => params[:user][:user_id]))      
      flash[:notice] = "Welcome #{@user.user_id}. Your account has been created."
      redirect_to movies_path
      else
      flash[:notice] = "Sorry, this user-id is taken. Try again."
      redirect_to new_user_path
      end 
 end
end
