class ChangeProductIdToString < ActiveRecord::Migration[5.0]
  def change
    change_column :trappe_invents, :product_id, :string
  end
end
