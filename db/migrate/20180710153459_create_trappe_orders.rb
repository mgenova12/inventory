class CreateTrappeOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :trappe_orders do |t|
      t.string :status

      t.timestamps
    end
  end
end
