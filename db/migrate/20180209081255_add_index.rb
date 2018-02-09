class AddIndex < ActiveRecord::Migration
  def change
     add_index :house_features, :house_id
    add_index :house_features, :feature_id
    add_index :house_features, [:house_id, :feature_id], unique: true

  end
end
