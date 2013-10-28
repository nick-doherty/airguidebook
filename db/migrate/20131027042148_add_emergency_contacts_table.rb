class AddEmergencyContactsTable < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
    t.integer :house_id
    t.string :service
    t.string :contact
    end
  end
end
