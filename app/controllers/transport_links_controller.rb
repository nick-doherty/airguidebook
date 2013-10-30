class TransportLinksController  < ApplicationController
  def new
    @transport_link = TransportLink.new
  end

  def create
    @transport_link = TransportLink.create params[:transport_link]
    @transport_link.house_id = @authenticated.houses.first.id
    @transport_link.save
    redirect_to new_amenity_path
  end

  def edit
    @transport_link = TransportLink.find params[:id]
  end

  def update
    @transport_link = TransportLink.find params[:id]
    @transport_link.update_attributes params[:transport_link]
    @transport_link.save
    redirect_to edit_amenity_path(@authenticated.houses.first.amenities.first.id)
  end
end