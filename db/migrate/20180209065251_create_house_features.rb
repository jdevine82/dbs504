class CreateHouseFeatures < ActiveRecord::Migration
  def change
    create_table :house_features do |t|
      t.integer :house_id
      t.integer :feature_id

      t.timestamps null: false
    end
  end
end
