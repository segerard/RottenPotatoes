class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :email
      t.string :session_token
      t.string :timestamps
    
      t.timestamps
    end
  end
end
