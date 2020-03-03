class ProfilesController < ApplicationController
  def profile
    @user = current_user
    @buildings = Building.all
  end
end
