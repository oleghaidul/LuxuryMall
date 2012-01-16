class AddDescriptionToBoutiques < ActiveRecord::Migration
  def change
    add_column :boutiques, :description, :text
  end
end
