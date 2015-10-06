class User < ActiveRecord::Base
  def create_user!(params) 
#   u = User.all
#   check_user_id = u.index(params[:user_id])
#   if(check_user_id == nil)
#       flash[:notice] = "Sorry, this user-id is taken. Try again."
#       redirect_to new_user_path
#   else    
     params[:session_token]="123"
     User.create!(params)
#   end
 end

end
