class LocationsController < ApplicationController
  before_action :set_location, except: [:index, :new, :create]

  def index
    @location = current_user.trip.locations
  end

  def show

  end

  def new
    @location = Location.new
    render :new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to trip_location_path(@trip, @location)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to trip_location_path(@trip, @location)
    else
    render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to trip_path(trip)
  end

  private

    def set_location
      @location = current_user.trip.location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:city, :state, :country, :trip_id)
    end

end
