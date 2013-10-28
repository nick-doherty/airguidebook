class AddTransportLinksTable < ActiveRecord::Migration
  def change
    create_table :transport_links do |t|
    t.integer :house_id
    t.string :name
    t.string :info
    t.timestamps
    end
  end
end
