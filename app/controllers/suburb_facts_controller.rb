class SuburbFactsController  < ApplicationController
  def new
    @suburb_fact = SuburbFact.new
  end

  def create
  @suburb_fact = SuburbFact.new params[:suburb_fact]
  @suburb_fact.save
  redirect_to new_restaurant_path(@authenticated)
  end
end