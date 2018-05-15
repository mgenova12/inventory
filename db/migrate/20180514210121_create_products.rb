class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :measurement
      t.string :max

      t.timestamps
    end
  end
end
