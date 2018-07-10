class Trappe::ProductsController < ApplicationController
  include ProductsHelper
  before_action :authenticate_user!

  def index 
    @products = TrappeProduct.where(deleted: false).order(:name)
  end

  def new
  end

  def create
    product = TrappeProduct.new(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location],
      deleted: false
    )
    if product.save
      render 'new'
    end
  end

  def edit
    @product = TrappeProduct.find(params[:id])
  end


  def update
    @product = TrappeProduct.find(params[:id])

    @product.update(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location]
    )

    redirect_to '/trappe/products'

  end

  def destroy
    @product = TrappeProduct.find(params[:id])

    @product.update(
      deleted: true
    )

    redirect_to '/trappe/products'
  end

end
