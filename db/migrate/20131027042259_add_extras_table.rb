class AddExtrasTable < ActiveRecord::Migration
  def change
    create_table :extras do |t|
    t.integer :house_id
    t.string :text
    end
  end
end
