class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  def post_params
    params.require(:room).permit(:img, :name, :introduction, :fee, :address)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:img, :name, :introduction, :fee, :address))
      if @room.save
        redirect_to :rooms
      else
        render "new"
      end
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end
end