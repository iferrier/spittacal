class ProfilesController < ApplicationController
  def profile
    @user = current_user
    @buildings = Building.all
    @building = current_user.building
  end
end
