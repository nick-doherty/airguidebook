# == Schema Information
#
# Table name: transport_links
#
#  id         :integer          not null, primary key
#  house_id   :integer
#  type       :string(255)
#  info       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TransportLink < ActiveRecord::Base
  attr_accessible :house_id, :name, :info
  belongs_to :house
end
