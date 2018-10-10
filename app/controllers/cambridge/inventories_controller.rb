class Cambridge::InventoriesController < ApplicationController
  include CambridgeInventoriesHelper
  before_action :authenticate_user!
  before_filter :authorize_cambridge
  
  def index
    @orders = CambridgeOrder.all.reverse_order
  end

  def new
    @walkin_shelf1 = CambridgeProduct.where(deleted: false, location: 'Walk-in Self 1')
    @walkin_shelf2 = CambridgeProduct.where(deleted: false, location: 'Walk-in Self 2')
    @walkin_shelf3 = CambridgeProduct.where(deleted: false, location: 'Walk-in Self 3')
    @walkin_shelf4 = CambridgeProduct.where(deleted: false, location: 'Walk-in Self 4')
    @walkin_shelf5 = CambridgeProduct.where(deleted: false, location: 'Walk-in Self 5')
    @walkin_shelf6 = CambridgeProduct.where(deleted: false, location: 'Walk-in Self 6')
    @walkin_floor = CambridgeProduct.where(deleted: false, location: 'Walk-in Floor')
    @top_walkin = CambridgeProduct.where(deleted: false, location: 'Top of Walk-in')
    @right_freezer_door = CambridgeProduct.where(deleted: false, location: 'Right Freezer Door')
    @left_freezer_door = CambridgeProduct.where(deleted: false, location: 'Left Freezer Door')
    @chest_freezer = CambridgeProduct.where(deleted: false, location: 'Chest Freezer')
    @shed_location1 = CambridgeProduct.where(deleted: false, location: 'Shed location 1')
    @shed_location2 = CambridgeProduct.where(deleted: false, location: 'Shed location 2')
    @shed_location3 = CambridgeProduct.where(deleted: false, location: 'Shed location 3')
    @shed_location4 = CambridgeProduct.where(deleted: false, location: 'Shed location 4')
    @shed_location5 = CambridgeProduct.where(deleted: false, location: 'Shed location 5')
    @shed_location6 = CambridgeProduct.where(deleted: false, location: 'Shed location 6')
    @back_table = CambridgeProduct.where(deleted: false, location: 'Back Table')
    @back_shelf = CambridgeProduct.where(deleted: false, location: 'Back Shelf')
    @front_top_counter = CambridgeProduct.where(deleted: false, location: 'Front Top Shelf')
    @front_counter = CambridgeProduct.where(deleted: false, location: 'Front Counter')
    @office = CambridgeProduct.where(deleted: false, location: 'Office')
  end

  def create 
    @products = CambridgeProduct.all
    
    order = CambridgeOrder.create(
      status: 'saved',
      message: params['message']
    )

    params[:product].values.each do |product|
      CambridgeInvent.create!(
        amount: product['amount'].to_i,
        product_id: product["product_id"].to_i,
        order_id: order.id
      )
    end

    redirect_to "/cambridge/inventory/#{order.id}"
  end

  def show
    @order_id = params[:id]
    @inventories = CambridgeInvent.where(order_id: params[:id])
    @order_message = CambridgeOrder.find(params[:id]).message
  end

  def show_all
    @order_id = params[:id]
    @inventories = CambridgeInvent.where(order_id: params[:id])
    @order_message = CambridgeOrder.find(params[:id]).message

    render 'show_all.html.erb'
  end

  def supplier
    @supplier = params[:supplier]
    @order_id = params[:id]
    @inventories = CambridgeInvent.where(order_id: params[:id])
    @order_message = CambridgeOrder.find(params[:id]).message

    render 'supplier.html.erb'
  end
end
