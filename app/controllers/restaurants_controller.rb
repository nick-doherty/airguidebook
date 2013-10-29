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
end