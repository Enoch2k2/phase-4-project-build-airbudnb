class DogHousesController < ApplicationController
  before_action :set_dog_house, only: [:show, :update, :destroy]

  # GET /dog_houses
  def index
    @dog_houses = DogHouse.all

    render json: @dog_houses, include: [{ trips: { include: [:dog], except: [:dog_id, :dog_house_id] }}]
  end

  # GET /dog_houses/1
  def show
    render json: @dog_house
  end

  # POST /dog_houses
  def create
    @dog_house = DogHouse.new(dog_house_params)

    if @dog_house.save
      render json: @dog_house, status: :created, location: @dog_house
    else
      render json: @dog_house.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dog_houses/1
  def update
    if @dog_house.update(dog_house_params)
      render json: @dog_house
    else
      render json: @dog_house.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dog_houses/1
  def destroy
    @dog_house.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_house
      @dog_house = DogHouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dog_house_params
      params.require(:dog_house).permit(:address, :state, :zipcode, :image_url, :short_description)
    end
end
