class CreateTrappeProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :trappe_products do |t|
      t.string :name
      t.string :measurement
      t.string :tuesday_max
      t.string :thursday_max
      t.string :prepped
      t.string :item_type
      t.string :amount
      t.string :case_quantity
      t.string :location
      t.boolean :deleted

      t.timestamps
    end
  end
end
