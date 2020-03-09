class ProfilesController < ApplicationController
  def profile
    @user = current_user
    @buildings = Building.all
    authorize @buildings
    @building = current_user.building
    authorize @building
  end
end
