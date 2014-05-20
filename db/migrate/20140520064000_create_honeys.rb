class CreateHoneys < ActiveRecord::Migration
  def change
    create_table :honeys do |t|
      t.integer :user_id
      t.string :company
      t.string :location
      t.string :honey_type
      t.integer :amount
      t.string :condition
      t.decimal :price
      t.string :reciept

      t.timestamps
    end
  end
end
