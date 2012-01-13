class Category < ActiveRecord::Base

	FILTER = Category.select(:name).map(&:name)
	has_many :items

	def self.matches?(request)
    end_of_path = request.path.split('/')[4]
    FILTER.include? end_of_path
  end

end
