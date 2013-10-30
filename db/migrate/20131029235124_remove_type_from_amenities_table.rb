class RemoveTypeFromAmenitiesTable < ActiveRecord::Migration
  def change
    remove_column :amenities, :type
  end
end
