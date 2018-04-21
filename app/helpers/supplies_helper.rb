module SuppliesHelper



  def edit_supply(category,supply)
    if current_user.id == supply.user_id
      link_to 'Edit', edit_category_supply_path(category.id, supply.id)
    end
  end

  def delete_supply(category,supply)
    if current_user.id == supply.user_id
      link_to 'Delete', category_supply_delete_path(category.id, supply.id),  data: {confirm: "Delete #{supply.name}?"}
    end
  end

end
