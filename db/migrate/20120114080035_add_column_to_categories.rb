class AddColumnToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :admin_user_id, :integer
  end
end
