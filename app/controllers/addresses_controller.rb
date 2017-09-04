class AddressesController < ApplicationController
  before_action :set_location
  before_action :set_address, except: [:index, :new, :create]

  def index
    @address = Address.all
  end

  def show

  end

  def new
    @address = Address.new
    render :new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to location_address_path(@location, @address)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @address.update(address_params)
      redirect_to location_address_path(@location, @address)
    else
    render :edit
    end
  end

  def destroy
    @address.destroy
    redirect_to location_path(@location)
  end

  private

  def set_location
      @location = Location.find(params[:location_id])
    end

    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:street, :city, :state, :zip, :map, :location_id)
    end

end
