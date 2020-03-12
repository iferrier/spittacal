class BuildingsController < ApplicationController
  def index
    @buildings = policy_scope(Building).order(name: :asc)
  end

  def new
    @building = Building.new
    authorize @building
  end

  def create
    @building = Building.new(building_params)
    authorize @building
    if @building.save
      redirect_to building_path(@building)
    else
      render :new
    end
  end

  def show
    @building = Building.find(params[:id])
    authorize @building
    @flats = @building.flats
    @flat = Flat.new
    @user = User.new
  end

  def destroy
    @user = current_user
    @building = Building.find(params[:id])
    authorize @building
    @building.destroy
    redirect_to a_profile_path(@user)
  end

  private
  def building_params
    params.require(:building).permit(:name)
  end
end
