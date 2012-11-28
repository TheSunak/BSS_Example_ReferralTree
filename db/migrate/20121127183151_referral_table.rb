class ReferralTable < ActiveRecord::Migration
  def up
  	  	create_table :referrals do |t|
  		t.string :from_name
  		t.string :from_email

  		t.string :referral_company

  		t.string :to_name
  		t.string :to_email
  	end
  end

end
