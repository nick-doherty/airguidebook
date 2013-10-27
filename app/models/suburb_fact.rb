# == Schema Information
#
# Table name: suburbs
#
#  id   :integer          not null, primary key
#  fact :integer
#  link :string(255)
#

class SuburbFact < ActiveRecord::Base
  attr_accessible :house_id, :fact, :link
  belongs_to :house
end
