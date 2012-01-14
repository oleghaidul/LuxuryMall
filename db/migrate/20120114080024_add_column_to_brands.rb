class AddColumnToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :admin_user_id, :integer
  end
end
