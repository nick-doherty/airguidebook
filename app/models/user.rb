# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  email           :string(255)
#

class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :name, :email, :password, :password_confirmation, :house_id
  has_many :houses, dependent: :destroy

  def next_section
      "/houses/#{ @authenticated.houses.first.id }/edit"
  end
end
