class UsersController < ApplicationController
  def new
  end

  def create
  end

  def index
  end

  def show
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
end
