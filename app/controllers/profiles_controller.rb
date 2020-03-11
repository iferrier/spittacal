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
  end

  def housecaretaker_profile
    @user = current_user
    @building = current_user.building
    authorize @building
    @flats = @building.flats.order(name: :asc)
    authorize @flats
  end
end
