class PorfoliosController < ApplicationController
  def index
    @porfolios = Porfolio.all
  end

  def new
    @portfolio_item = Porfolio.new
  end

  def create
    @portfolio_item = Porfolio.new(params.require(:porfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to porfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Porfolio.find(params[:id])
  end

  def update
    @portfolio_item = Porfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:porfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to porfolios_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Porfolio.find(params[:id])
  end

  def destroy
    @portfolio_item = Porfolio.find(params[:id])

    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to porfolios_url, notice: 'Record was removed.' }
    end
  end
end
