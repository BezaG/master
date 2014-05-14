class AddDailyQuantityColumnToMilkOrder < ActiveRecord::Migration
  def change
    add_column :milk_orders, :daily_quantity, :integer
  end
end
