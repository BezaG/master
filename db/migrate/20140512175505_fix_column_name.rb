class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :eggs, :type, :type_of_egg
  end
end
