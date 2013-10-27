# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  fact       :integer
#  link       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Region < ActiveRecord::Base
  attr_accessible :house_id, :fact, :link\
  belongs_to :house
end
