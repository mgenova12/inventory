class CreateInvents < ActiveRecord::Migration[5.0]
  def change
    create_table :invents do |t|
      t.string :amount
      t.string :product_id
      t.string :order_id

      t.timestamps
    end
  end
end
