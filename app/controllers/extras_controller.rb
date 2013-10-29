class ExtrasController  < ApplicationController
  def new
    @extra = Extra.new
  end

  def create
    @extra = Extra.create params[:extra]
    @extra.house_id = @authenticated.houses.first.id
    @extra.save
  end
end