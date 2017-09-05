class TripsController < ApplicationController
  before_action :set_trip, except: [:index, :new, :create]

  def index
    flash[:notice] = 'Welcome to the Trip Tracker!'
    @trips= current_user.trips.all
  end

  def show
  end

  def new
    @trip = Trip.new
    render :new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to @trip
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
    render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to root_path
  end

  private

    def set_trip
      @trip = current_user.trips.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:name, :duration, :user_id)
    end

end
