class RestaurantsController  < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create params[:restaurant]
    @restaurant.house_id = @authenticated.houses.first.id
    @restaurant.save
    redirect_to new_transport_link_path
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]
    @restaurant.update_attributes params[:restaurant]
    @restaurant.save
    redirect_to edit_transport_link_path(@authenticated.houses.first.transport_links.first.id)
  end
end