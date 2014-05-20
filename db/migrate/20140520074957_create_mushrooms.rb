class CreateMushrooms < ActiveRecord::Migration
  def change
    create_table :mushrooms do |t|
      t.integer :user_id
      t.string :company
      t.string :location
      t.datetime :day_of_supply
      t.integer :quantity
      t.decimal :price
      t.string :reciept

      t.timestamps
    end
  end
end
