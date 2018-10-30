class AddOutOfStock < ActiveRecord::Migration[5.0]
  def change
    add_column :cambridge_invents, :product_total, :decimal, precision: 9, scale: 2
    add_column :trappe_invents, :product_total, :decimal, precision: 9, scale: 2
    add_column :bypass_invents, :product_total, :decimal, precision: 9, scale: 2

    add_column :invents, :out_of_stock, :boolean
    add_column :cambridge_invents, :out_of_stock, :boolean
    add_column :trappe_invents, :out_of_stock, :boolean
    add_column :bypass_invents, :out_of_stock, :boolean

  end
end
