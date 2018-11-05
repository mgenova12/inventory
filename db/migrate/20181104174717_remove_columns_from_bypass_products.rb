class RemoveColumnsFromBypassProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :bypass_products, :name, :string
    remove_column :bypass_products, :measurement, :string
    remove_column :bypass_products, :tuesday_max, :integer
    remove_column :bypass_products, :thursday_max, :integer
    remove_column :bypass_products, :prepped, :boolean
    remove_column :bypass_products, :item_type, :string
    remove_column :bypass_products, :supplier, :string
    remove_column :bypass_products, :amount, :integer
    remove_column :bypass_products, :case_quantity, :integer
    remove_column :bypass_products, :price, :decimal

    add_column :bypass_products, :max_amount, :integer
    add_column :bypass_products, :product_id, :integer

  end
end
