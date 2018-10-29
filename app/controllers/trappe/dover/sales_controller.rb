class Trappe::Dover::SalesController < ApplicationController
  
  def index
    @orders = Order.all.reverse_order
  end

  def order_day
    @order_id = params[:id]
    @inventories = Invent.where(order_id: params[:id])
    @order_message = Order.find(params[:id]).message
   
    render 'show.html.erb'
  end

end
