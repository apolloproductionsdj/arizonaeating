class PlacesController < ApplicationController

  def index
    @places = Place.order(:name).paginate(page: params[:page], per_page: 5)
  end 

private
  def place_params
    params.require(:place).permit(:name, :address, :description)
  end

end
