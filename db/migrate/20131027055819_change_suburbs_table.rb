class ChangeSuburbsTable < ActiveRecord::Migration
  def change
    rename_table :suburbs, :suburb_facts
  end
end
