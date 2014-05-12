class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.string :user
      t.string :company
      t.string :tel
      t.string :location
      t.string :type
      t.integer :daily_quantity
      t.decimal :price
      t.string :reciept

      t.timestamps
    end
  end
end
