class ProductsController < ApplicationController
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
      thursday_max: params[:thursday_max]
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
      thursday_max: params[:thursday_max]
    )

    redirect_to '/products'

  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to '/products'
  end

end
