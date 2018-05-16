class InventoriesController < ApplicationController
  def index
    @orders = Order.all

  end

  def new
    @products = Product.all
  end

  def create 
    @products = Product.all
    order = Order.create(
      status: 'saved'
    )

    params[:product].values.each do |product|

      Invent.create(
        amount: product['amount'].to_i,
        product_id: product["product_id"].to_i,
        order_id: order.id
      )

    end

    redirect_to "/inventory/#{order.id}"

  end

  def show

    @inventories = Invent.where(order_id: params[:id])


  end

end
