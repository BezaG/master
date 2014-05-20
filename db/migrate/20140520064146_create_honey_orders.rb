class CreateHoneyOrders < ActiveRecord::Migration
  def change
    create_table :honey_orders do |t|
      t.integer :user_id
      t.integer :honey_id
      t.string :company
      t.string :location
      t.integer :amount
      t.decimal :price

      t.timestamps
    end
  end
end
