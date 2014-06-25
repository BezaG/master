class AddAcceptedToMilkOrders < ActiveRecord::Migration
  def change
    add_column :milk_orders, :accepted, :boolean
  end
end
