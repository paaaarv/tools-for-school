
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
    @supplies.sort{|a,b| a.amount_to_goal <=> b.amount_to_goal}
  end

  def valid_donation?
    if self.donations > self.goal
      errors.add(:donations, "cannot be more than amount needed.")
      return false
    else
      return true
    end
  end


  def goal
    goal = self.price * self.quantity
    goal
  end

  def amount_to_goal
    goal/self.donations
  end

end
