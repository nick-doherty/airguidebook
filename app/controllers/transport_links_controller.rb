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
end