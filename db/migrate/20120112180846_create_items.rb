class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :category_id
      t.integer :brand_id
      t.integer :season_id
      t.string :structure
      t.text :description
      t.integer :price
      t.integer :discount
      t.string :sex

      t.timestamps
    end
  end
end
