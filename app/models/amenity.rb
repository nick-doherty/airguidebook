# == Schema Information
#
# Table name: amenities
#
#  id       :integer          not null, primary key
#  house_id :integer
#  name     :string(255)
#  info     :string(255)
#

class Amenity < ActiveRecord::Base
  attr_accessible :house_id, :name, :type, :info
  belongs_to :house
end
