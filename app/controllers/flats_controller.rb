class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def create
    @flat = Flat.new
  end

  def new
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to building_path(@building)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def flat_params
    params.require(@flat).permit(:name, :color)
  end
end
