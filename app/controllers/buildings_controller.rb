class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to building_path(@building)
    else
      render :new
    end
  end

  def show
    @building = Building.find(params[:id])
    @flats = @building.flats
  end

  private
  def building_params
    params.require(:building).permit(:name)
  end
end
