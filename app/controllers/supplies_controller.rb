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
    @supply = Supply.new(supply_params)
    @supply.category_id = params[:category_id]
    if @supply.save
      @supply.save
      render json: @supply, status: 201
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
    if params["supply_donations"]
      donations= params["supply_donations"].to_f
    else
      donations = params[:supply][:donations].to_f
    end
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
    params.require(:supply).permit(:name, :category_id, :price, :quantity, :description, :user_id)
  end
end
