class CreateBoutiques < ActiveRecord::Migration
  def change
    create_table :boutiques do |t|
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
