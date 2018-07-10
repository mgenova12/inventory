class AddMessageToTrappeOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :trappe_orders, :message, :string

  end
end
