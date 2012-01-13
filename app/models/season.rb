class Season < ActiveRecord::Base
	has_many :items

	FILTER = ["winter", "spring", "autumn", "summer"]

  def self.matches?(request)
    end_of_path = request.path.split('/')[3]
    FILTER.include? end_of_path
  end

	scope :last_year, where(:year => Time.now.year)

end
