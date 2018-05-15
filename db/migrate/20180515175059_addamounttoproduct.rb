class Addamounttoproduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :amount, :integer
    change_column :invents, :amount, 'integer USING CAST(amount AS integer)'

  end
end
