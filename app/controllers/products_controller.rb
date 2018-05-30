class ProductsController < ApplicationController
  include ProductsHelper
  
  def index 
    @products = Product.all
  end

  def new
  end

  def create
    product = Product.new(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location]
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
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location]
    )

    redirect_to '/products'

  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to '/products'
  end

end
