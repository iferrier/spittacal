class UsersController < ApplicationController
  before_action :set_building
  before_action :set_flat, only: [:index, :show, :edit, :update, :delete]

  def index
    @users = @flat.users
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.building = @building
    @flat = Flat.find(user_params[:flat_id].to_i)
    @user.flat = @flat
    if @user.save
      redirect_to building_flat_path(@building, @flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_building
    @building = Building.find(params[:building_id])
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :flat_id)
  end
end
