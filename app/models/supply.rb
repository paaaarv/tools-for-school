class Supply < ActiveRecord::Base
  belongs_to :user
  belongs_to :category



  def amount_to_goal
    goal = self.price * self.quantity
    "$#{self.donations} out of $#{goal} raised."
  end
end
