class AddColoumnToTypes < ActiveRecord::Migration
  def change
    add_column :types, :typename, :string
  
  end
end
