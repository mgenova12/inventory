class ChangeOrderIdToString < ActiveRecord::Migration[5.0]
  def change
    change_column :trappe_invents, :order_id, :string
  end
end
