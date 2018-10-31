class Bypass::ProductsController < ApplicationController
  include ProductsHelper
  before_action :authenticate_user!
  before_filter :authorize_admin

  def index 
    @products = BypassProduct.where(deleted: false).order(:name)
  end

  def new

  end

  def create
    product = BypassProduct.new(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      supplier: params[:supplier],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location],
      deleted: false,
      price: params[:price]
    )
    if product.save
      render 'new'
    end
  end

  def edit
    @product = BypassProduct.find(params[:id])
  end

  def update
    @product = BypassProduct.find(params[:id])

    @product.update(
      name: params[:name],
      measurement: params[:measurement],
      tuesday_max: params[:tuesday_max],
      thursday_max: params[:thursday_max],
      supplier: params[:supplier],
      case_quantity: params[:case_quantity],
      prepped: params[:prepped],
      item_type: params[:item_type],
      location: params[:location],
      price: params[:price]
    )

    redirect_to '/bypass/products'
  end

  def destroy
    @product = BypassProduct.find(params[:id])

    @product.update(
      deleted: true
    )

    redirect_to '/bypass/products'
  end

end
