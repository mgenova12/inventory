class AddOrderDayToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :invents, :order_day, :string
    add_column :orders, :order_day, :string

  end
end
