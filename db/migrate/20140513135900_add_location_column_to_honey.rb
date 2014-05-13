class AddLocationColumnToHoney < ActiveRecord::Migration
  def change
    add_column :honeys, :location, :string
  end
end
