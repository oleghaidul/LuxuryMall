class Boutique < ActiveRecord::Base
	belongs_to :admin_user

	has_attached_file :image
end
