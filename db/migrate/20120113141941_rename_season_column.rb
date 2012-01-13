class RenameSeasonColumn < ActiveRecord::Migration
  def change
    rename_column :seasons, :year_id, :boutique_id
  end
end
