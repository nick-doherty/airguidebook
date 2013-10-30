class AmenitiesController  < ApplicationController
  def new
    @amenity = Amenity.new
  end

  def create
    @amenity = Amenity.create params[:amenity]
    @amenity.house_id = @authenticated.houses.first.id
    @amenity.save
    redirect_to new_emergency_contact_path
  end

  def edit
    @amenity = Amenity.find params[:id]
  end

 def update
    @amenity = Amenity.find params[:id]
    @amenity.update_attributes params[:amenity]
    @amenity.save
    redirect_to edit_emergency_contact_path(@authenticated.houses.first.emergency_contacts.first.id)
  end
end