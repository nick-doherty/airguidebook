class ChangeEmergenciesTable < ActiveRecord::Migration
  def change
    rename_table :emergencies, :emergency_contacts
  end
end
