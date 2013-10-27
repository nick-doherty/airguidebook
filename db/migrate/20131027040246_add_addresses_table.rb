class AddAddressesTable < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    t.integer :house_id
    t.string :street
    t.string :suburb
    t.string :region
    t.string :state
    t.string :postcode
    t.string :country
    end
  end
end
