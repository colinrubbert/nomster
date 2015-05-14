class PlacesController < ApplicationController

  def index
    @places = Place.all.page(params[:page]).per(6)
  end

  def new
    @place = Place.new
  end

end
