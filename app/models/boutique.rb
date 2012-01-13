class Boutique < ActiveRecord::Base

	FILTER = Boutique.select(:url_bout).map(&:url_bout)

	belongs_to :admin_user
	has_many :years do
		def name(year)
			where(:name => year)
		end
	end
	has_attached_file :image

	def self.valid?(params)
		where(:url_bout => params).size == 1
	end


  def self.matches?(request)
    end_of_path = request.path.split('/')[1]
    FILTER.include? end_of_path
  end

end
