class CreateCambridgeProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :cambridge_products do |t|
      t.string :name
      t.string :measurement
      t.integer :tuesday_max
      t.integer :thursday_max
      t.boolean :prepped
      t.string :item_type
      t.string :supplier
      t.integer :case_quantity
      t.string :location
      t.boolean :deleted

      t.timestamps
    end
  end
end
