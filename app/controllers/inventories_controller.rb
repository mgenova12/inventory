class InventoriesController < ApplicationController
  def index
  end

  def new
    @products = Product.all

  end

  def create 
    Invent.create(
      amount: params[:inventory]['amount'],
      product_id: params[:inventory]['product_id']
    )
  end

  def show

  end

end
