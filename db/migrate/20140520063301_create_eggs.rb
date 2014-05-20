class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.integer :user_id
      t.string :company
      t.string :location
      t.string :type_of_egg
      t.integer :daily_quantity
      t.decimal :price
      t.string :reciept

      t.timestamps
    end
  end
end
