class ProfilesController < ApplicationController
  def user_profile
    @user = current_user
    authorize @user
  end

  def admin_profile
    @user = current_user
    authorize @user
    @buildings = Building.all.order(name: :asc)
    authorize @buildings
    @flats = @building.flats
    authorize @flats
  end

  def housecaretaker_profile
    @user = current_user
    @building = current_user.building
    authorize @building
    @flats = @building.flats
    authorize @flats
  end
end
