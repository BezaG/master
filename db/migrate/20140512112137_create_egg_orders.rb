class CreateEggOrders < ActiveRecord::Migration
  def change
    create_table :egg_orders do |t|
      t.string :user
      t.string :company
      t.string :tel
      t.string :location
      t.decimal :price
      t.integer :daily_quantity

      t.timestamps
    end
  end
end
