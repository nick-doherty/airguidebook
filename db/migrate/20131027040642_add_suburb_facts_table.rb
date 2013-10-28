class AddSuburbFactsTable < ActiveRecord::Migration
  def change
      create_table :suburb_facts do |t|
      t.integer :house_id
      t.string :fact
      t.string :link
     end
  end
end