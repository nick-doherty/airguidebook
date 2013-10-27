class ChangeRegionsTable < ActiveRecord::Migration
  def change
    rename_table :regions, :region_facts
  end
end