require 'securerandom'
class User < ActiveRecord::Base
  def self.create_user! (parameters) 
   if(!User.find_by_user_id(parameters[:user_id]))  
     parameters[:session_token]=SecureRandom.base64
     @user = User.create!(parameters)
   end
 end

end
