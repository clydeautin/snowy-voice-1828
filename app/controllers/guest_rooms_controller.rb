class GuestRoomsController < ApplicationController

  def create
    guest = Guest.find(params[:id])

    GuestRoom.create(room_id: params[:room_id], guest: guest)
    redirect_to "/guests/#{guest.id}"
  end
end