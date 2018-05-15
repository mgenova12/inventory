class InventoriesController < ApplicationController
  def index
  end

  def new
    @products = Product.all
  end

  def create 
    @products = Product.all

    params[:product].values.each do |product|

      Invent.create!(
        amount: product['amount'].to_i,
        product_id: product["product_id"].to_i
      )

    end
    redirect_to '/inventory'

  end

  def show

  end

end
