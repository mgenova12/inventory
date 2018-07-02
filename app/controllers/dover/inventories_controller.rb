class Dover::InventoriesController < ApplicationController
  include InventoriesHelper
  before_action :authenticate_user!
  
  def index
    @orders = Order.all.reverse_order
  end

  def new
    @walkin_shelf1 = Product.where(deleted: false, location: 'Walk-in Self 1')
    @walkin_shelf2 = Product.where(deleted: false, location: 'Walk-in Self 2')
    @walkin_shelf3 = Product.where(deleted: false, location: 'Walk-in Self 3')
    @walkin_shelf4 = Product.where(deleted: false, location: 'Walk-in Self 4')
    @walkin_shelf5 = Product.where(deleted: false, location: 'Walk-in Self 5')
    @walkin_shelf6 = Product.where(deleted: false, location: 'Walk-in Self 6')
    @walkin_floor = Product.where(deleted: false, location: 'Walk-in Floor')
    @top_walkin = Product.where(deleted: false, location: 'Top of Walk-in')
    @right_freezer_door = Product.where(deleted: false, location: 'Right Freezer Door')
    @left_freezer_door = Product.where(deleted: false, location: 'Left Freezer Door')
    @chest_freezer = Product.where(deleted: false, location: 'Chest Freezer')
    @shed_location1 = Product.where(deleted: false, location: 'Shed location 1')
    @shed_location2 = Product.where(deleted: false, location: 'Shed location 2')
    @shed_location3 = Product.where(deleted: false, location: 'Shed location 3')
    @shed_location4 = Product.where(deleted: false, location: 'Shed location 4')
    @shed_location5 = Product.where(deleted: false, location: 'Shed location 5')
    @shed_location6 = Product.where(deleted: false, location: 'Shed location 6')
    @back_table = Product.where(deleted: false, location: 'Back Table')
    @back_shelf = Product.where(deleted: false, location: 'Back Shelf')
    @front_top_counter = Product.where(deleted: false, location: 'Front Top Shelf')
    @front_counter = Product.where(deleted: false, location: 'Front Counter')
    @office = Product.where(deleted: false, location: 'Office')
  end

  def create 
    @products = Product.all
    
    order = Order.create(
      status: 'saved',
      message: params['message']
    )

    params[:product].values.each do |product|
      Invent.create(
        amount: product['amount'].to_i,
        product_id: product["product_id"].to_i,
        order_id: order.id
      )
    end

    redirect_to "/dover/inventory/#{order.id}"
  end

  def show
    @order_id = params[:id]
    @inventories = Invent.where(order_id: params[:id])
    @order_message = Order.find(params[:id]).message
  end

  def tuesday
    @order_id = params[:id]
    @inventories = Invent.where(order_id: params[:id])
    @order_message = Order.find(params[:id]).message

    render 'tuesday.html.erb'
  end

  def thursday
    @order_id = params[:id]
    @inventories = Invent.where(order_id: params[:id])
    @order_message = Order.find(params[:id]).message

    render 'thursday.html.erb'
  end

end