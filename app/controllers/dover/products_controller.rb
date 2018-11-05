class Dover::ProductsController < ApplicationController
  include ProductsHelper
  before_action :authenticate_user!
  before_filter :authorize_admin
  
  def index 
    @products = Product.where(deleted: false).order(:name)
  end

  def new
  end

  def create
    product = Product.new(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location],
      deleted: false,
      price: params[:price],
      barcode: rand.to_s[2..13]
    )
    if product.save
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end


  def update
    @product = Product.find(params[:id])

    @product.update(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location],
      barcode: params[:barcode],
      price: params[:price]
    )

    redirect_to '/dover/products'

  end

  def destroy
    @product = Product.find(params[:id])

    @product.update(
      deleted: true
    )

    redirect_to '/dover/products'
  end

end
