class RegionFactsController  < ApplicationController
  def new
    @region_fact = RegionFact.new
  end
end