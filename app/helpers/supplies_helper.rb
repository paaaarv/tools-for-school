module SuppliesHelper


  def goal(supply)
    goal = supply.price * supply.quantity
    goal
  end
end


  def edit_supply(category,supply)
    if current_user.id == supply.user_id
      link_to 'Edit', edit_category_supply_path(category.id, supply.id)
    end
  end

  def delete_supply(category,supply)
    if current_user.id == supply.user_id
      link_to 'Delete', category_supply_path(category.id, supply.id), method: :delete, data: {confirm: "Delete #{supply.name}?"}
    end
  end
