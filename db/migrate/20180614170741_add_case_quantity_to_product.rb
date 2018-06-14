class AddCaseQuantityToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :case_quantity, :integer
    add_column :orders, :message, :text
  end
end
