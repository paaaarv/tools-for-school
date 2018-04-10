module CategoriesHelper


  def see_two(category)
    array = []
    array << category.supplies.first
    if category.supplies.length > 1
      array << category.supplies.second
    end
    array
  end 
end
