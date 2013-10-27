# == Schema Information
#
# Table name: restaurants
#
#  id       :integer          not null, primary key
#  house_id :integer
#  name     :string(255)
#  cuisine  :string(255)
#  cost     :string(255)
#  link     :string(255)
#

class Restaurant < ActiveRecord::Base
  attr_accessible :house_id, :name, :cuisine, :cost, :link
  belongs_to :house
end
