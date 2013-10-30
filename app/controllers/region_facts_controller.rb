class RegionFactsController  < ApplicationController
  def new
    @region_fact = RegionFact.new
  end

  def create
    @region_fact = RegionFact.create params[:region_fact]
    @region_fact.house_id = @authenticated.houses.first.id
    @region_fact.save
    redirect_to new_suburb_fact_path
  end

  def edit
    @region_fact = RegionFact.find params[:id]
  end

  def update
    @region_fact = RegionFact.find params[:id]
    @region_fact.update_attributes params[:region_fact]
    @region_fact.save
    redirect_to edit_suburb_fact_path(@authenticated.houses.first.suburb_facts.first.id)
  end
end