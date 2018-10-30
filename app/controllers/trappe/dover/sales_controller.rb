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
      Invent.find_by(id: invent['invent_id']).update(
        out_of_stock: invent['out_of_stock']
      )
    end

    redirect_to "/trappe/dover/sales/#{params[:order_id]}/#{params[:order_day]}/stock/review/new"
  end

  def new 
    @order_id = params[:id]
    @inventories = Invent.where(order_id: params[:id])
    @order_message = Order.find(params[:id]).message

    @final_total = Invent.where(order_id: params[:id], out_of_stock: false).sum(:product_total)
   
    render 'new.html.erb'

  end

  def create 
    Order.find_by(id: params[:order_id]).update(
      sale_status: 'Complete'
    )

    redirect_to "/trappe/dover/sales/#{params[:order_id]}/#{params[:order_day]}"
  end

  def show
    @order_id = params[:id]
    @inventories = Invent.where(order_id: params[:id])
    @order_message = Order.find(params[:id]).message

    @final_total = Invent.where(order_id: params[:id], out_of_stock: false).sum(:product_total)   
  end


end
