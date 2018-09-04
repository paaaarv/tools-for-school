

class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    if current_user
      @category = Category.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  def supplies_data
    @category = Category.find(params[:id])
    @supplies = @category.supplies
    render json: @supplies

  end

end
