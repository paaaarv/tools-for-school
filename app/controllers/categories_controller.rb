

class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    if current_user
      @category = Category.find(params[:id])
      @supply= Supply.new
      @categories = Category.all
      @user = current_user
    else
      redirect_to new_user_session_path
    end
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @category}
    end
  end

  def supplies_data
    @category = Category.find(params[:id])
    @supplies = @category.supplies.most_donations(@category)
    render json: @supplies

  end

end
