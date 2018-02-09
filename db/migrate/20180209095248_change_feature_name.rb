class ChangeFeatureName < ActiveRecord::Migration
  def change
    rename_column :features, :Feature, :features
  end
end
