class Removetype < ActiveRecord::Migration[5.0]
  def change
  	remove_column :foods, :type, :string
  	add_column :foods, :food_type, :string
  end
end
