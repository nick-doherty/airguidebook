class HousesController  < ApplicationController
  def new
    @house = House.new
  end

  def create
    @house = House.new params[:house]
    @house.user = @authenticated
    @house.save
    redirect_to new_region_fact_path
  end
end