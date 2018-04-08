class Category < ActiveRecord::Base
  has_many :supplies
  has_many :users, through: :supplies
end
