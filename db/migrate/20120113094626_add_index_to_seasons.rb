class AddIndexToSeasons < ActiveRecord::Migration
  def change
  	add_index :seasons, :name
    add_index :seasons, :year_id
    add_index :seasons, [:name, :year_id], :unique => true
  end
end
