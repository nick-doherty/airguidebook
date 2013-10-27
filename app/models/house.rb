# == Schema Information
#
# Table name: houses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class House < ActiveRecord::Base
  attr_accessible :user_id, :image
  belongs_to :user
  has_one :address
  has_many :amenities
  has_many :emergencies
  has_many :extras
  has_many :regions
  has_many :restaurants
  has_many :suburbs
  has_many :transport_links
end
