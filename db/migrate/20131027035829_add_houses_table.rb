class AddHousesTable < ActiveRecord::Migration
  def change
      create_table :houses do |t|
      t.integer :user_id
      t.string :image
      t.timestamps
     end
  end
end