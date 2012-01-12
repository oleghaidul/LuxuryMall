module BoutiquesHelper
	def current_year
		Time.now.year
	end

	def year
		if request.path.split('/')[2]
			request.path.split('/')[2]
		else
			current_year
		end
	end
end
