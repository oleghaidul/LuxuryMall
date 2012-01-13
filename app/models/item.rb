class Item < ActiveRecord::Base
	has_many :sizes
	has_many :pictures
	accepts_nested_attributes_for :pictures
	belongs_to :brand
	belongs_to :category
	belongs_to :season
	belongs_to :admin_user
end
