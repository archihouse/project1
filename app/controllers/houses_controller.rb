class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    house = House.create house_params
    redirect_to house # /houses/:some_id ie. the show page
  end

  def edit
    @house = House.find params[:id]
  end

  def update
    house = House.find params[:id]
    house.update house_params
    redirect_to house
  end

  def destroy
    house = House.find params[:id]
    house.destroy
    redirect_to houses_path
  end

  def show
    @house = House.find params[:id]
  end

  # Strong Params: a whitelist of permitted fields for the form helper #
  private
    def house_params
      params.require(:house).permit(:name, :lord, :heir, :words, :image)
    end
  end
