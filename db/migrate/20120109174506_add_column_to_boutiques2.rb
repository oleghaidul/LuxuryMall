class AddColumnToBoutiques2 < ActiveRecord::Migration
  def change
    add_column :boutiques, :phone2, :string
    add_column :boutiques, :director, :string
    add_column :boutiques, :image_file_name, :string
    add_column :boutiques, :image_content_type, :string
    add_column :boutiques, :image_file_size, :integer
    add_column :boutiques, :image_uploaded_at, :datetime
  end
end
