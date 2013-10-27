class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :air_url
      t.timestamps
    end
  end
end
