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
    @user = @authenticated
    @user.houses.last.delete
    redirect_to root_path
  end

  def edit
    @house = House.find params[:id]
  end

  def update
    @house = House.find params[:id]
    @house.update_attributes params[:house]
    @house.save
    if (@house.region_facts.length > 0)
      redirect_to edit_region_fact_path(@house.region_facts.first.id)
    else
      redirect_to new_region_fact_path
    end
  end

  def show
    render :layout => "guidebook"
  end
end