class CreateMilks < ActiveRecord::Migration
  def change
    create_table :milks do |t|
      t.string :user
      t.string :company
      t.string :tel
      t.string :location
      t.string :condition
      t.decimal :price
      t.string :reciept

      t.timestamps
    end
  end
end
