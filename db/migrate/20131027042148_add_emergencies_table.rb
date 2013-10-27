class AddEmergenciesTable < ActiveRecord::Migration
  def change
    create_table :emergencies do |t|
    t.integer :house_id
    t.string :service
    t.string :contact
    end
  end
end
