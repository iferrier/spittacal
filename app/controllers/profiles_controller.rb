class ProfilesController < ApplicationController
  def profile
    @user = current_user
    @buildings = policy_scope(Building).order(name: :asc)
    authorize @buildings
    @building = current_user.building
    authorize @building
    @flats = @building.flats
    authorize @flats
  end
end
