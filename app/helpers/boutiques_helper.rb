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

	# def category_link(cat, boutique, year, season)
	# 	if year && season
	# 		#link_to cat, boutique_year_season_category_path(@boutique.url_bout, year, season, cat)
	# 	end
	# 		link_to cat, boutique_year_category_path(@boutique.url_bout, year, cat)
	# 	if season==nil && boutique
	# 		#link_to cat, boutique_category_path(@boutique.url_bout, cat)
	# 	end
	# end

end
