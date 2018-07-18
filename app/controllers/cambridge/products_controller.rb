class Cambridge::ProductsController < ApplicationController
  include ProductsHelper
  before_action :authenticate_user!
  before_filter :authorize_admin

  def index 
    @products = CambridgeProduct.where(deleted: false).order(:name)
  end

  def new
  end

  def create
    product = CambridgeProduct.new(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      supplier: params[:supplier],
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
    @product = CambridgeProduct.find(params[:id])
  end


  def update
    @product = CambridgeProduct.find(params[:id])

    @product.update(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      supplier: params[:supplier],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location]
    )

    redirect_to '/cambridge/products'

  end

  def destroy
    @product = CambridgeProduct.find(params[:id])

    @product.update(
      deleted: true
    )

    redirect_to '/cambridge/products'
  end
end
