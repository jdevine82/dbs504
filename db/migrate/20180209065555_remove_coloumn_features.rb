class RemoveColoumnFeatures < ActiveRecord::Migration
  def change
    remove_column :features, :featurelistid
  end
end
