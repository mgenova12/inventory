class Trappe::Dover::SalesController < ApplicationController
  
  def index
    @orders = Order.all.reverse_order
  end

  def stock
    @order_id = params[:id]
    @inventories = Invent.where(order_id: params[:id])
    @order_message = Order.find(params[:id]).message

    @final_total = Invent.where(order_id: params[:id]).sum(:product_total)
   
    render 'stock.html.erb'
  end

  def create_stock
    @products = Product.all

    params[:inventory].values.each do |invent|
      # p '*******'
      # p invent['invent_id']
      Invent.find_by(id: invent['invent_id']).update(
        out_of_stock: invent['out_of_stock']
      )
    end

    redirect_to "/bypass/inventory/#{order.id}"


  end

end
