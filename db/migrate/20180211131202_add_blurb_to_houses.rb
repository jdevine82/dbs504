class AddBlurbToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :blurb, :string
  end
end
