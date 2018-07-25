class ChangeCaseQuanitiyToInteger < ActiveRecord::Migration[5.0]
  def change
    TrappeProduct.where(case_quantity: "").update_all(case_quantity: nil)
    change_column :trappe_products, :case_quantity, 'integer USING CAST(case_quantity AS integer)'
  end
end
