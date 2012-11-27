class UserTable < ActiveRecord::Migration
  def up
  	  	create_table :users do |t|
  		t.string :first_last_name
  		t.string :email
  	end

  end

end
