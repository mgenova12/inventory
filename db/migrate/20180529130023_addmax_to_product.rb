class AddmaxToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :tuesday_max, :integer
    add_column :products, :thursday_max, :integer
    remove_column :products, :max, :integer

  end
end
