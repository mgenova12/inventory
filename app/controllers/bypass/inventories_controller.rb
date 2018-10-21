class Bypass::InventoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Bypass.all.reverse_order
  end


end
