class Bypass::ProductsController < ApplicationController

  def new

  end

  def create
    product = BypassProduct.new(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      supplier: params[:supplier],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location],
      deleted: false
    )
    if product.save
      render 'new'
    end
  end

end
