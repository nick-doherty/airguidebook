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
end

