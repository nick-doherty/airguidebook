# == Schema Information
#
# Table name: emergencies
#
#  id       :integer          not null, primary key
#  house_id :integer
#  service  :string(255)
#  contact  :string(255)
#

class Emergency < ActiveRecord::Base
  attr_accessible :house_id, :service, :contact
  belongs_to :house
end
