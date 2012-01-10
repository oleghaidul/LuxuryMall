class BoutiquesController < ApplicationController
	layout "boutique"

  def show
  	@boutiques = Boutique.all
  	@boutique = Boutique.find(params[:id])
  end

end
