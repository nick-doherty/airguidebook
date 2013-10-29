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

  def destroy
    redirect_to root_path
  end

  def edit
    @house = House.find params[:id]
  end

  def update
    @house = House.find params[:id]
    @house.update_attributes params[:house]
    @house.save
    redirect_to region_fact_path(region_fact)
  end
end

# check do they have existing?
#   if they do go to new, if not go to edit.

