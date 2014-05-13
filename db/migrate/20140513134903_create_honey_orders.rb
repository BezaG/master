class CreateHoneyOrders < ActiveRecord::Migration
  def change
    create_table :honey_orders do |t|
      t.string :user
      t.string :company
      t.string :tel
      t.integer :amount
      t.decimal :price

      t.timestamps
    end
  end
end
