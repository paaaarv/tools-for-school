require 'pry'
class SuppliesController < ApplicationController


  def new
    @supply = Supply.new
  end

  def create
    @supply = Supply.create(supply_params)
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
    params.require(:supply).permit(:name, :price, :quantity, :description, :category_id)
  end
end
