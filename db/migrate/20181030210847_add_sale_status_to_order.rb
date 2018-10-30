class AddSaleStatusToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :sale_status, :string
    add_column :bypass_orders, :sale_status, :string
    add_column :cambridge_orders, :sale_status, :string
    add_column :trappe_orders, :sale_status, :string
  end
end
