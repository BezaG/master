class AddHoneyIdColumnToHoneyOrders < ActiveRecord::Migration
  def change
    add_column :honey_orders, :honey_id, :integer
  end
end
