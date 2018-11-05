class AddAmountToBypssProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :bypass_products, :amount, :integer
  end
end
