class BoutiquesController < ApplicationController
	layout "boutique"
	before_filter :load_bout

  def show
  	@boutique = Boutique.find(params[:id])
  end

  def description
  	
  end

  def load_bout
  	@boutiques = Boutique.all
  end

end
