class HomeController < ApplicationController
  def index
  	@boutiques = Boutique.all
  end
end
