class CategoriesController < ApplicationController


  def home
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
end
