class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def new
    @region = Region.new
  end

  def create
    region = Region.create region_params
    redirect_to region # /regions/:some_id ie. the show page
  end

  def edit
    @region = Region.find params[:id]
  end

  def update
    region = Region.find params[:id]
    region.update region_params
    redirect_to region
  end

  def destroy
    region = Region.find params[:id]
    region.destroy
    redirect_to regions_path
  end

  def show
    @region = Region.find params[:id]
  end

  # Strong Params: a whitelist of permitted fields for the form helper #
  private
    def region_params
      params.require(:region).permit(:name, :culture, :religion, :capital, :image)
    end
  end
