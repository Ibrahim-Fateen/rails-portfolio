class PorfoliosController < ApplicationController
  def index
    @porfolios = Porfolio.all
  end
end
