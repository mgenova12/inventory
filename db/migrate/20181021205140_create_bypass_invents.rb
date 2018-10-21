class CreateBypassInvents < ActiveRecord::Migration[5.0]
  def change
    create_table :bypass_invents do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :amount

      t.timestamps
    end
  end
end
