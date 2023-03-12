class CustomsController < ApplicationController


  # show all designers page
  def index
    @designers = Designer.all
  end

  def show
    @designer = Designer.find(params[:id])
  end


  # form to create booking
  def new
    @designer = Designer.find(params[:format])
    @booking = Booking.new
    raise
  end

 #save booking
  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.designer_id = @designer.id
    @booking.save
    redirect_to customs_dashboard_path
  end

  def dashboard
    @bookings = Booking.find(current_user.id)
  end

  private
  def booking_params
    params.require(:booking).permit(:spec_text, :spec_file)
  end
end
