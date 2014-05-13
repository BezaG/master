class CreateHoneys < ActiveRecord::Migration
  def change
    create_table :honeys do |t|
      t.string :user
      t.string :company
      t.string :tel
      t.string :honey_type
      t.integer :amount
      t.decimal :price
      t.string :condition
      t.string :reciept

      t.timestamps
    end
  end
end
