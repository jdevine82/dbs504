class AddColoumnToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :type_id, :integer
  end
end
