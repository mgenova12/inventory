class AddAmountToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :cambridge_products, :amount, :integer
  end
end
