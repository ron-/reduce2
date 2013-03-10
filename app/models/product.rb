# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  prod_image      :text
#  prod_name       :string(255)
#  prod_type       :string(255)
#  upc             :string(255)
#  description     :text
#  company_name    :string(255)
#  company_twitter :string(255)
#  votes           :integer          default(0)
#  num_tweets      :integer          default(0)
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :prod_name, :prod_image, :prod_type, :upc, :description, :company_name, :company_twitter
  belongs_to :user, :inverse_of => :products


end
