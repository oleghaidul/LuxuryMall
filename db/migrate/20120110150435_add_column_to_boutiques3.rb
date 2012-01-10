class AddColumnToBoutiques3 < ActiveRecord::Migration
  def change
    add_column :boutiques, :url_bout, :string
  end
end
