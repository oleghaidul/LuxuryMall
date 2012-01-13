class BoutiquesController < ApplicationController
	layout "boutique"
	before_filter :load_bout

  def show 
    @boutique = Boutique.find_by_url_bout(params[:bout])
  end

  def description
  end

  def load_bout
  	@boutiques = Boutique.all
    @categories = Category.all
    @brands = Brand.all
  end

  def show_year
    @boutique = Boutique.find_by_url_bout(params[:bout])
    render :show
  end

  def show_season
    @boutique = Boutique.find_by_url_bout(params[:bout])
    render :show
  end
  
end
