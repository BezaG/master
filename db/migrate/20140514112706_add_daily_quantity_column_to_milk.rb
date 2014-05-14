class AddDailyQuantityColumnToMilk < ActiveRecord::Migration
  def change
    add_column :milks, :daily_quantity, :integer
  end
end
