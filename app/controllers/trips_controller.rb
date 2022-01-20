class TripsController < ApplicationController
  before_action :find_dog_house

  # POST /dog_houses/1/trips

  def create
    @trip = current_dog.trips.build(trip_params.merge({dog_house_id: @dog_house.id}))
    
    if @trip.save
      render json: @trip, status: 200
    else
      render json: { errors: @trip.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
    def find_dog_house
      @dog_house = DogHouse.find_by_id(params[:dog_house_id])
    end

    def trip_params
      params.require(:trip).permit(:start_date, :end_date, :dog_house_id)
    end
end
