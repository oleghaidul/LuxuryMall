class Season < ActiveRecord::Base
	belongs_to :year
	has_many :items
	FILTER1 = Boutique.select(:url_bout).map(&:url_bout)
	FILTER2 = ["2008", "2009", "2010", "2011", "2012"]

  def self.matches?(request)
    end_of_path = request.path.split('/')[1]
    FILTER1.include? end_of_path
    end_of_path = request.path.split('/')[2]
    FILTER2.include? end_of_path
  end

	scope :last_year, where(:year => Time.now.year)

end
