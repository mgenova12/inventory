class AddPriceToDoverProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price, :numeric, precision: 5, scale: 2

  end
end
