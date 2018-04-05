class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    city = City.create city_params
    redirect_to city # /cities/:some_id ie. the show page
  end

  def edit
  @city = City.find params[:id]
  end

  def update
  city = City.find params[:id]
  city.update city_params
  redirect_to city
  end

  def destroy
    city = City.find params[:id]
    city.destroy
    redirect_to cities_path
  end

  def show
    @city = City.find params[:id]
  end

  # Strong Params: a whitelist of permitted fields for the form helper #
  private
    def city_params
      params.require(:city).permit(:name, :population, :house_id, :region_id, :image)
    end
  end
