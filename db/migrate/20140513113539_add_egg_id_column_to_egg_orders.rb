class AddEggIdColumnToEggOrders < ActiveRecord::Migration
  def change
    add_column :egg_orders, :egg_id, :integer
  end
end
