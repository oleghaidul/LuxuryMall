class BoutiquesController < ApplicationController
	layout "boutique"
	before_filter :load_bout

  def show
    if params[:season]  
      @seasons = Season.current_boutique_with_season(@boutique, 
                                                      params[:year], 
                                                      params[:season])
    else
      @seasons = Season.current_boutique(@boutique, 
                                          params[:year])
    end
  end

  def description
  end

  def load_bout
  	@boutiques = Boutique.all
  	@boutique = Boutique.find_by_url_bout(params[:bout]) 
  end
  
end
