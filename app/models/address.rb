# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  house_id   :integer
#  street     :string(255)
#  suburb     :string(255)
#  region     :string(255)
#  state      :string(255)
#  postcode   :string(255)
#  country    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Address < ActiveRecord::Base
  attr_accessible :house_id, :street, :suburb, :region, :state, :postcode, :country
  belongs_to :house
end
