class ChangeColoumnName < ActiveRecord::Migration
  def change
    rename_column :features, :houseid, :featurelistid
  end
end
