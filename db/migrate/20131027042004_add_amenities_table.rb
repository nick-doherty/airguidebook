class AddAmenitiesTable < ActiveRecord::Migration
  def change
    create_table :amenities do |t|
    t.integer :house_id
    t.string :name
    t.string :type
    t.string :info
    end
  end
end
