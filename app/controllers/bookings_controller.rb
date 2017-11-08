class BookingsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_customer!

  def new
    @new_booking = Booking.new
    @available_slots = Booking.where(restaurant_id: 5, time: "9AM", )

  end

  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    # render json: params


    current_customer.bookings.create(params.require(:booking).permit(:time, :restaurant_id))

    redirect_to root_path


  end

  def destroy
    Booking.destroy(params[:id])
    render json: {
      message:"ok"
    }
    # deleted_booking = Booking.find(params[:id])
    #
    # deleted_booking.destroy
    # redirect_back(fallback_location: root_path)
  end
end
