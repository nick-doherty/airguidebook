# == Schema Information
#
# Table name: region_facts
#
#  id       :integer          not null, primary key
#  house_id :integer
#  fact     :string(255)
#  link     :string(255)
#

class RegionFact < ActiveRecord::Base
  attr_accessible :house_id, :fact, :link
  belongs_to :house
end
