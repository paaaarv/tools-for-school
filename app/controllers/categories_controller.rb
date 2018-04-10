class CategoriesController < ApplicationController


  def home
    @categories = Category.all 
  end
end
