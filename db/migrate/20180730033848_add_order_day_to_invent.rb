class AddOrderDayToInvent < ActiveRecord::Migration[5.0]
  def change
    add_column :invents, :order_day, :string
  end
end
