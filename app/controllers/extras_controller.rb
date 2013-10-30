class ExtrasController  < ApplicationController
  def new
    @extra = Extra.new
  end

  def create
    @extra = Extra.create params[:extra]
    @extra.house_id = @authenticated.houses.first.id
    @extra.save
    redirect_to house_path(@authenticated.houses.first.id)
  end

  def edit
    @extra = Extra.find params[:id]
  end

 def update
    @extra = Extra.find params[:id]
    @extra.update_attributes params[:extra]
    @extra.save
    redirect_to house_path(@authenticated.houses.first.id)
  end
end