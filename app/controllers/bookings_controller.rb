class BookingsController < ApplicationController
  def update
    booking = Booking.find(params[:id])
    booking.status = params[:status]
    booking.save
    redirect_to designer_dashboard_path
  end
end
