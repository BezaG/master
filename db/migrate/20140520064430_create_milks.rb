class CreateMilks < ActiveRecord::Migration
  def change
    create_table :milks do |t|
      t.integer :user_id
      t.string :company
      t.string :location
      t.integer :daily_quantity
      t.string :condition
      t.decimal :price
      t.string :reciept

      t.timestamps
    end
  end
end
