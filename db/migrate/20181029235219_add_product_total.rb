class AddProductTotal < ActiveRecord::Migration[5.0]
  def change
    add_column :invents, :product_total, :decimal, precision: 9, scale: 2
  end
end
