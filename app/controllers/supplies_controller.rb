require 'pry'
class SuppliesController < ApplicationController
  before_action :logged_in?

  def new
    @supply = Supply.new
    authorize @supply
  end

  def create
    @supply = Supply.create(supply_params)
    redirect_to '/'
  end

  def update
    @supply = Supply.find(params[:id])
    authorize @supply
    @supply.update(supply_params)
    redirect_to '/'
  end

  def donate
    @supply = Supply.find(params[:id])
    donations = params[:supply][:donations].to_f
    @supply.donations += donations
    @supply.save
    redirect_to '/'
  end

  private

  def supply_params
    params.require(:supply).permit(:name, :price, :quantity, :description, :category_id, :user_id)
  end
end
