class Bypass::InventoriesController < ApplicationController
  include BypassInventoriesHelper
  before_action :authenticate_user!
  before_filter :authorize_bypass

  def index
    @orders = BypassOrder.all.reverse_order
  end

  def new
    @walkin_shelf1 = BypassProduct.where(location: 'Walk-in Self 1')
    @walkin_shelf2 = BypassProduct.where(location: 'Walk-in Self 2')
    @walkin_shelf3 = BypassProduct.where(location: 'Walk-in Self 3')
    @walkin_shelf4 = BypassProduct.where(location: 'Walk-in Self 4')
    @walkin_shelf5 = BypassProduct.where(location: 'Walk-in Self 5')
    @walkin_shelf6 = BypassProduct.where(location: 'Walk-in Self 6')
    @walkin_floor = BypassProduct.where(location: 'Walk-in Floor')
    @top_walkin = BypassProduct.where(location: 'Top of Walk-in')
    @right_freezer_door = BypassProduct.where(location: 'Right Freezer Door')
    @left_freezer_door = BypassProduct.where(location: 'Left Freezer Door')
    @chest_freezer = BypassProduct.where(location: 'Chest Freezer')
    @shed_location1 = BypassProduct.where(location: 'Shed location 1')
    @shed_location2 = BypassProduct.where(location: 'Shed location 2')
    @shed_location3 = BypassProduct.where(location: 'Shed location 3')
    @shed_location4 = BypassProduct.where(location: 'Shed location 4')
    @shed_location5 = BypassProduct.where(location: 'Shed location 5')
    @shed_location6 = BypassProduct.where(location: 'Shed location 6')
    @back_table = BypassProduct.where(location: 'Back Table')
    @back_shelf = BypassProduct.where(location: 'Back Shelf')
    @front_top_counter = BypassProduct.where(location: 'Front Top Shelf')
    @front_counter = BypassProduct.where(location: 'Front Counter')
    @office = BypassProduct.where(location: 'Office')
  end

  def create 
    @products = BypassProduct.all
    
    order = BypassOrder.create(
      status: 'saved',
      sale_status: 'Pending',
      message: params['message']
    )

    params[:product].values.each do |product|
      BypassInvent.create!(
        amount: product['amount'],
        product_id: product["bypass_product_id"],
        order_id: order.id,
        quantity_needed: quantity_needed(product)
      )
    end

    redirect_to "/bypass/inventory/#{order.id}"
  end

  def show
    @order_id = params[:id]
    @inventories = BypassInvent.where(order_id: params[:id])
    @order_message = BypassOrder.find(params[:id]).message
  end

  def show_all
    @order_id = params[:id]
    @inventories = BypassInvent.where(order_id: params[:id])
    @order_message = BypassOrder.find(params[:id]).message

    render 'show_all.html.erb'
  end  

  def supplier
    @supplier = params[:supplier]
    @order_id = params[:id]
    @inventories = BypassInvent.where(order_id: params[:id])
    @order_message = BypassOrder.find(params[:id]).message

    render 'supplier.html.erb'
  end




end
