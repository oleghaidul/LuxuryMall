class AddIndexToYear < ActiveRecord::Migration
  def change
  	add_index :years, :name
    add_index :years, :boutique_id
    add_index :years, [:name, :boutique_id], :unique => true
  end
end
