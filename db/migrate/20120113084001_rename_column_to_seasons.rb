class RenameColumnToSeasons < ActiveRecord::Migration
  def change
    rename_column :seasons, :boutique_id, :year_id
  end
end
