class AddPriceAndQuantityNeeded < ActiveRecord::Migration[5.0]
  def change
    add_column :cambridge_invents, :quantity_needed, :integer
    add_column :bypass_invents, :quantity_needed, :integer
    add_column :trappe_invents, :quantity_needed, :integer

    add_column :cambridge_products, :price, :numeric, precision: 5, scale: 2
    add_column :bypass_products, :price, :numeric, precision: 5, scale: 2
    add_column :trappe_products, :price, :numeric, precision: 5, scale: 2
  end
end
