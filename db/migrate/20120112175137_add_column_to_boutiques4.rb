class AddColumnToBoutiques4 < ActiveRecord::Migration
  def change
    add_column :boutiques, :miltibrand, :boolean
  end
end
