class CompanyTable < ActiveRecord::Migration
  def up
  	  	create_table :companies do |t|
  		t.string :company_name
  	end

  end
end
