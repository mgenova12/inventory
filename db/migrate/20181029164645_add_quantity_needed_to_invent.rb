class AddQuantityNeededToInvent < ActiveRecord::Migration[5.0]
  def change
    add_column :invents, :quantity_needed, :integer

  end
end
