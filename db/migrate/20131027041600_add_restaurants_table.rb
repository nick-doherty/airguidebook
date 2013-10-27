class AddRestaurantsTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    t.integer :house_id
    t.string :name
    t.string :cuisine
    t.string :cost
    t.string :link
    end
  end
end