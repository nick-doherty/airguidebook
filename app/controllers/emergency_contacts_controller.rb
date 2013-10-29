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
end