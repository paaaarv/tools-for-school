

class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    if current_user
      @category = Category.find(params[:id])
      @supply = @category.supplies.most_donations(@category).first
    else
      redirect_to new_user_session_path
    end
  end

  def supplies_data
    @category = Category.find(params[:id])
    @supplies = @category.supplies.most_donations(@category)
    render json: @supplies

  end

end
