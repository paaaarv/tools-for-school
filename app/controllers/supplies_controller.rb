require 'pry'
class SuppliesController < ApplicationController
  before_action :logged_in?

  def new
    @categories = Category.all
    @category = Category.find(params[:category_id])
    @supply = Supply.new
    authorize @supply
  end

  def data
    @category = Category.find(params[:category_id])
    @supply = Supply.find(params[:id])
    render json: @supplies
  end

  def create
    @category = Category.find(params[:supply][:category_id])
    @supply = Supply.new(supply_params)
    if @supply.save
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @categories = Category.all
    @supply = Supply.find(params[:id])
    authorize @supply
  end

  def update
    @category = Category.find(params[:category_id])
    @supply = Supply.find(params[:id])
    authorize @supply
    if @supply.update(supply_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  def show
    @supply = Supply.find(params[:id])
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @supply}
    end
  end

  def donate
    @supply = Supply.find(params[:supply_id])
    @category = @supply.category
    donations = params[:supply][:donations].to_f
    @supply.donations += donations
    if @supply.valid_donation?
      @supply.save
    end
      render :show
  end

  def destroy
    Supply.find(params[:supply_id]).destroy
    redirect_to '/'
  end

  private

  def supply_params
    params.require(:supply).permit(:name, :price, :quantity, :description, :category_id, :user_id)
  end
end
