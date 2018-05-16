class ProductsController < ApplicationController
  def new
  end

  def create
    product = Product.new(
      name: params[:name],
      measurement: params[:measurement],
      max: params[:max]
    )
    if product.save
      render 'new'
    end
  end

end
