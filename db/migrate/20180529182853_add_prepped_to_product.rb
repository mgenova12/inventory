class AddPreppedToProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :amount, :integer
    add_column :products, :prepped, :boolean
    add_column :products, :item_type, :string

  end
end
