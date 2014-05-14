class CreateMilkOrders < ActiveRecord::Migration
  def change
    create_table :milk_orders do |t|
      t.string :user
      t.string :company
      t.string :tel
      t.string :location
      t.decimal :price
      t.integer :milk_id

      t.timestamps
    end
  end
end
