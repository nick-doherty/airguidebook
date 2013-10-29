class SuburbFactsController  < ApplicationController
  def new
    @suburb_fact = SuburbFact.new
  end

  def create
    @suburb_fact = SuburbFact.create params[:suburb_fact]
    @suburb_fact.house_id = @authenticated.houses.first.id
    @suburb_fact.save
    redirect_to new_restaurant_path
  end
end