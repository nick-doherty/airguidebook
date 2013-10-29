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
end