class BoutiquesController < ApplicationController
	layout "boutique"
	before_filter :load_bout

  def show
  end

  def description
  end

  def load_bout
  	@boutiques = Boutique.all
  		@boutique = Boutique.find_by_url_bout(params[:bout]) 
  end

end
