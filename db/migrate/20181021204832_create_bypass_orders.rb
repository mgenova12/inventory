class CreateBypassOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :bypass_orders do |t|
      t.string :status
      t.string :message

      t.timestamps
    end
  end
end
