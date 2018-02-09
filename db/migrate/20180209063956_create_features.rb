class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :Feature
      t.integer :houseid

      t.timestamps null: false
    end
  end
end
