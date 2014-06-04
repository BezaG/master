class AddAcceptedToEggOrders < ActiveRecord::Migration
  def change
    add_column :egg_orders, :accepted, :boolean
  end
end
