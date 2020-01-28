class BuildingsController < ApplicationController
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
  end

  private
  def building_params
    params.require(:building).permit(:name)
  end
end
