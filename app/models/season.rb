class Season < ActiveRecord::Base
	belongs_to :boutique
	has_many :items

	FILTER = ["2008", "2009", "2010", "2011", "2012"]

  def self.matches?(request)
    end_of_path = request.path.split('/')[2]
    FILTER.include? end_of_path
  end

	def self.current_boutique(boutique, year)
		where(:boutique_id => boutique, :year => year)
	end

	def self.current_boutique_with_season(boutique, year, season)
		where(:boutique_id => boutique, :year => year, :season => season)
	end

	scope :last_year, where(:year => Time.now.year)

end
