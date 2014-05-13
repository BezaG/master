class AddLocationColumnToHoneyOrders < ActiveRecord::Migration
  def change
    add_column :honey_orders, :location, :string
  end
end
