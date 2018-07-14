class AddRoleToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :integer
    add_column :trappe_products, :supplier, :string
  end
end
