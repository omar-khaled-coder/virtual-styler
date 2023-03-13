class ChatroomsController < ApplicationController

  def new

  end

  def create

  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

end
