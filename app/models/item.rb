class Item < ActiveRecord::Base
	has_many :sizes
	has_many :pictures
	belongs_to :brand
	belongs_to :category
	belongs_to :season
end
