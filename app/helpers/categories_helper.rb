module CategoriesHelper


  def see_two(supplies)
    array = []
    array << supplies.first
    if supplies.length > 1
      array << supplies.second
    end
    array
  end
end
