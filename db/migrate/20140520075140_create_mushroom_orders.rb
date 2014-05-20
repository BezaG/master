class CreateMushroomOrders < ActiveRecord::Migration
  def change
    create_table :mushroom_orders do |t|
      t.integer :user_id
      t.integer :mushroom_id
      t.string :company
      t.string :location
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
