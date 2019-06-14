class PlacesController < ApplicationController

  def index
    @places = Place.order("name").paginate(page: params[:page]).per_page(5)
  end

end
