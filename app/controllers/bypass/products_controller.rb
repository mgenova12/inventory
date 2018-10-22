class Bypass::ProductsController < ApplicationController

  def index 
    @products = BypassProduct.where(deleted: false).order(:name)
  end

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

  def edit
    @product = BypassProduct.find(params[:id])
  end

  def update
    @product = BypassProduct.find(params[:id])

    @product.update(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      supplier: params[:supplier],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location]
    )

    redirect_to '/bypass/products'
  end

  def destroy
    @product = BypassProduct.find(params[:id])

    @product.update(
      deleted: true
    )

    redirect_to '/bypass/products'
  end

end
