class FlatsController < ApplicationController
  before_action :set_building

  def index
    @flats = @building.flats
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.building = @building
    authorize @flat
    if @flat.save
      redirect_to hct_profile_path
    else
      render :new
    end
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
    @users = @flat.users
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to hct_profile_path
  end

  def destroy
    @flat = Flat.find(params[:id])
    authorize @flat
    @flat.destroy
    redirect_to hct_profile_path
  end

  private

  def set_building
    @building = Building.find(params[:building_id])
  end

  def flat_params
    params.require(:flat).permit(:name, :color)
  end
end
