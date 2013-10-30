class EmergencyContactsController  < ApplicationController
  def new
    @emergency_contact = EmergencyContact.new
  end

  def create
    @emergency_contact = EmergencyContact.create params[:emergency_contact]
    @emergency_contact.house_id = @authenticated.houses.first.id
    @emergency_contact.save
    redirect_to new_extra_path
  end

  def edit
    @emergency_contact = EmergencyContact.find params[:id]
  end

 def update
    @emergency_contact = EmergencyContact.find params[:id]
    @emergency_contact.update_attributes params[:emergency_contact]
    @emergency_contact.save
    redirect_to edit_extra_path(@authenticated.houses.first.extras.first.id)
  end
end