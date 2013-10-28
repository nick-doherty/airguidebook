class AddHousesTable < ActiveRecord::Migration
  def change
      create_table :houses do |t|
      t.integer :user_id
      t.string :air_url
      t.string :image
      t.string :street
      t.string :suburb
      t.string :region
      t.string :state
      t.string :postcode
      t.string :country
      t.timestamps
     end
  end
end