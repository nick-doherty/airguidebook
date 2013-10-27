# == Schema Information
#
# Table name: extras
#
#  id       :integer          not null, primary key
#  house_id :integer
#  text     :string(255)
#

class Extra < ActiveRecord::Base
  attr_accessible :house_id, :text
  belongs_to :house
end
