class UsersController < ApplicationController
  before_action :set_building
  before_action :set_flat, only: %i[index]

  def index
    @users = @flat.users
  end

  def show
    @building = Building.find(params[:building_id])
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @flat = @user.flat
    @user.update(user_params)
    redirect_to building_flat_path(@building, @flat)
  end

  def destroy
    @user = User.find(params[:id])
    @flat = @user.flat
    @user.destroy
    redirect_to building_flat_path(@building, @flat)
  end

  private

  def set_building
    @building = Building.find(params[:building_id])
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :flat_id, :building_id)
  end
end
