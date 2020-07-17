class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings, options = {
      include: [:bird, :location]
    })
  end
end
