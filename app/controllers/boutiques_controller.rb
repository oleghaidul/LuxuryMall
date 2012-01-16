class BoutiquesController < ApplicationController
	layout "boutique", :except => :description
	before_filter :load_bout

  def show 
    @boutique = Boutique.find_by_url_bout(params[:bout])
  end

  def description
    @boutique = Boutique.find_by_url_bout(params[:bout])
    render :layout => "description"
    if params[:content]
      @boutique.description = params[:content][:page_content][:value]
      @boutique.save!
      render text: ""
      return
    end
  end

  def load_bout
  	@boutiques = Boutique.all
    @categories = Category.limit(4)
    @brands = Brand.all
  end

  
end
