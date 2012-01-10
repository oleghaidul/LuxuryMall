class BoutiquesController < ApplicationController
	layout "boutique"
	before_filter :load_bout

  def show
  	@boutique = Boutique.find_by_url_bout(params[:id])
  end

  def description
  	
  end

  def load_bout
  	@boutiques = Boutique.all
  end

end
