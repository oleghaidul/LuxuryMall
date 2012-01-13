class Year < ActiveRecord::Base
	belongs_to :boutique
	has_many :seasons do
		def name(season)
			where(:name => season)
		end
	end
	has_many :items, :through => :seasons
	FILTER = ["winter", "spring", "autumn", "summer"]

  def self.matches?(request)
    end_of_path = request.path.split('/')[3]
    FILTER.include? end_of_path
  end
end
