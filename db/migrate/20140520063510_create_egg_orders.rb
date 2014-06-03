class CreateEggOrders < ActiveRecord::Migration
  def change
    create_table :egg_orders do |t|
      t.integer :user_id
      t.integer :egg_id
      t.string :company
      t.string :location
      t.integer :daily_quantity
      t.decimal :price
      t.boolean  :accept, :default => false

      t.timestamps
    end
  end
end
