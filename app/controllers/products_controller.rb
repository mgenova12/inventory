class ProductsController < ApplicationController
  include ProductsHelper

  def index 
    @products = Product.where(deleted: false).order(:name)
  end

  def new
  end

  def create
    product = Product.new(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
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
    @product = Product.find(params[:id])
  end


  def update
    @product = Product.find(params[:id])

    @product.update(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location]
    )

    redirect_to '/products'

  end

  def destroy
    @product = Product.find(params[:id])

    @product.update(
      deleted: true
    )

    redirect_to '/products'
  end

end
