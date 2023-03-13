class ChatroomsController < ApplicationController
  def new

  end

  def create
    @booking = Booking.find(params[:booking_id])
    @chatroom = Chatroom.create({
      user_id: current_user.id,
      designer_id: @booking.designer.id,
    })
    redirect_to chatroom_path(@chatroom)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
