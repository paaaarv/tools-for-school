class Supply < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :quantity, numericality: true 
  validates :quantity, presence: true
  validates :category_id, presence: true



end
