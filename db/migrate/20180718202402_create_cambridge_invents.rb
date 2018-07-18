class CreateCambridgeInvents < ActiveRecord::Migration[5.0]
  def change
    create_table :cambridge_invents do |t|
      t.integer :amount
      t.string :product_id
      t.string :order_id

      t.timestamps
    end
  end
end
