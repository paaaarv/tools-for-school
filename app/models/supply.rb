require 'pry'
class Supply < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :quantity, numericality: true
  validates :quantity, presence: true
  validates :category_id, presence: true

  def self.most_donations(category)
    @supplies=Supply.where(category_id: category.id)
    @supplies.order(donations: :desc)
  end

end
