class AddColumnToItems2 < ActiveRecord::Migration
  def change
    add_column :items, :admin_user_id, :integer
  end
end
