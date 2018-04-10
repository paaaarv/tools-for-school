require 'pry'
class SuppliesController < ApplicationController

  def update
    @supply = Supply.find(params[:id])
    donations = params[:supply][:donations].to_f
    @supply.donations += donations
    @supply.save
    redirect_to '/'
  end
end
