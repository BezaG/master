class AddAcceptedToHoneyOrders < ActiveRecord::Migration
  def change
    add_column :honey_orders, :accepted, :boolean
  end
end
