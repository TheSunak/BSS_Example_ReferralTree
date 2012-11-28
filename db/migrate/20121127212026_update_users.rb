class UpdateUsers < ActiveRecord::Migration
  def up
		add_column :users, :points_total, :int

  end

  def down
  end
end
