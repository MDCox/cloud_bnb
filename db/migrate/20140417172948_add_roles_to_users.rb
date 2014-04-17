class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :owner, :boolean
    add_column :users, :renter, :boolean
  end
end
