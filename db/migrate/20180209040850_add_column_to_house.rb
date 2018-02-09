class AddColumnToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :type_id, :number

  end
end
