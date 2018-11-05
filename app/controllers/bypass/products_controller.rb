class Bypass::ProductsController < ApplicationController
  include ProductsHelper
  before_action :authenticate_user!
  before_filter :authorize_admin

  def index 
    @bypass_products = BypassProduct.order(:id)
  end

  def search
    @products = Product.order(:name)

    render 'search.html.erb'
  end

  def create_search
    # p '###########'
    # p params[:id_or_name]

    # if params[:id_or_name].to_i != 0 
    #   redirect_to "/bypass/products/#{params[:id_or_name]}/new"
    # elsif params[:id_or_name].to_i == 0 
    #   @id = Product.find_by(name: params[:id_or_name]).id
    #   redirect_to "/bypass/products/#{@id}/new"
    # else 
    #   redirect_to "/bypass/products/search/new"
    # end

  end

  def new 
    @product = Product.find(params[:id])

    render 'new.html.erb'
  end

  def create 
    BypassProduct.create!(
      max_amount: params[:max_amount],
      location: params[:location],
      product_id: params[:id]
    )

    redirect_to '/bypass/products/search/new'
  end

  def edit
    @bypass_products = BypassProduct.find(params[:id])
  end

  def update
    @bypass_products = BypassProduct.find(params[:id])

    @bypass_products.update(
      max_amount: params[:max_amount],
      location: params[:location]
    )

    redirect_to '/bypass/products'
  end

  def destroy
    @bypass_products = BypassProduct.find(params[:id])

    @bypass_products.destroy

    redirect_to '/bypass/products'
  end

end
