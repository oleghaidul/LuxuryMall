class Boutique < ActiveRecord::Base

	belongs_to :admin_user
	has_attached_file :image

	def self.valid?(params)
		where(:url_bout => params).size == 1
	end

end
