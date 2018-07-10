class AddBooleanToTrappeProduct < ActiveRecord::Migration[5.0]
  def change
    change_column :trappe_products, :prepped, 'boolean USING CAST(prepped AS boolean)'
  end
end
