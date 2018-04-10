module SuppliesHelper


  def amount_to_goal(supply)
    goal = supply.price * supply.quantity
    "#{number_to_currency(supply.donations)} out of #{number_to_currency(goal)} raised."
  end
end
