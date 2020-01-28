class CalendarsController < ApplicationController
  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
  end

  def show
  end

  private

  def calendar_params
    params.require(calendar).permit(:name)
  end
end
