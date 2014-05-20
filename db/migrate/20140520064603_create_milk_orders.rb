class CreateMilkOrders < ActiveRecord::Migration
  def change
    create_table :milk_orders do |t|
      t.integer :user_id
      t.integer :milk_id
      t.string :company
      t.string :location
      t.integer :daily_quantity
      t.decimal :price

      t.timestamps
    end
  end
end
