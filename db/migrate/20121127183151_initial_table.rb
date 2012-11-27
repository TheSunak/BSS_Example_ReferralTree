class InitialTable < ActiveRecord::Migration
  def up
  	  	create_table :referrals do |t|
  		t.integer :user_id
  		t.integer :company_id
  	end
  end

end
