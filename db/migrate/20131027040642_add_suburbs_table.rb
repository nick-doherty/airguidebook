class AddSuburbsTable < ActiveRecord::Migration
  def change
      create_table :suburbs do |t|
      t.integer :house_id
      t.string :fact
      t.string :link
     end
  end
end