class RemoveColoumnFromHouse < ActiveRecord::Migration
  def change
    remove_column :houses,  :type_id
  end
end
