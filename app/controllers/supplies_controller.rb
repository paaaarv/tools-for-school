require 'pry'
class SuppliesController < ApplicationController
  before_action :logged_in?

  def new
    @category = Category.find(params[:category_id])
    @supply = Supply.new
    authorize @supply
  end

  def create
    @category = Category.find(params[:category_id])
    @supply = Supply.new(supply_params)
    if @supply.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @supply = Supply.find(params[:id])
    authorize @supply
  end

  def update
    @supply = Supply.find(params[:id])
    authorize @supply
    if @supply.update(supply_params)
      redirect_to '/'
    else
      redirect_to edit_category_supply_path(params[:category_id], @supply.id)
    end
  end

  def donate
    @supply = Supply.find(params[:supply_id])
    donations = params[:supply][:donations].to_f
    @supply.donations += donations
    @supply.save
    redirect_to '/'
  end

  def destroy
    Supply.find(params[:id]).destroy
    redirect_to '/'
  end

  private

  def supply_params
    params.require(:supply).permit(:name, :price, :quantity, :description, :category_id, :user_id)
  end
end
