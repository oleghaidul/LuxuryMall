class AddColumnToBoutiques < ActiveRecord::Migration
  def change
    add_column :boutiques, :admin_user_id, :integer
  end
end
