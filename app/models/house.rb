# == Schema Information
#
# Table name: houses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  air_url    :string(255)
#  image      :string(255)
#  street     :string(255)
#  suburb     :string(255)
#  region     :string(255)
#  state      :string(255)
#  postcode   :string(255)
#  country    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class House < ActiveRecord::Base
  attr_accessible :user_id, :air_url, :image, :street, :suburb, :region, :state, :postcode, :country
  belongs_to :user
  has_many :amenities, dependent: :destroy
  has_many :emergencies, dependent: :destroy
  has_many :extras, dependent: :destroy
  has_many :regions, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :suburbs, dependent: :destroy
  has_many :transport_links, dependent: :destroy
end
