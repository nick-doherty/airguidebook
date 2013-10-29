class RemovePaswordFromUsersTable < ActiveRecord::Migration
  def change
    remove_column :users, :password
  end
end
