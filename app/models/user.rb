class User < ActiveRecord::Base
  def self.create_user! (parameters) 
 if(User.exists?(:user_id => parameters['user']['user_id'])==false)  
     parameters['user']['session_token']="123"
     @user = User.create!(parameters[:user])
   end
 end

end
