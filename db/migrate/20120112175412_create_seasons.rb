class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :boutique_id
      t.integer :year
      t.string :name

      t.timestamps
    end
  end
end
