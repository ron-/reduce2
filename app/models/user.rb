# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  twitter         :string(255)
#  city            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :twitter, :city, :password, :password_confirmation
  has_many :products, :inverse_of => user
end
