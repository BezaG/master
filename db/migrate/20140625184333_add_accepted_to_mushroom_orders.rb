class AddAcceptedToMushroomOrders < ActiveRecord::Migration
  def change
    add_column :mushroom_orders, :accepted, :boolean
  end
end
