class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @building = Building.find(params[:building_id])
    @flat = Flat.new
  end

  def create
    @building = Building.find(params[:building_id])
    @flat = Flat.new(flat_params)
    @flat.building = @building
    if @flat.save
      redirect_to building_path(@building)
    else
      render :new
    end
  end

  def edit
    @building = Building.find(params[:id])
    @flat = Flat.find(params[:building_id])
  end

  def update
    @building = Building.find(params[:id])
    @flat = Flat.find(params[:building_id])
    @flat.update(flat_params)
    redirect_to building_path(@building)
  end

  def destroy
    @building = Building.find(params[:id])
    @flat = Flat.find(params[:building_id])
    @flat.destroy
    redirect_to building_path(@flat.building)
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :color)
  end
end
