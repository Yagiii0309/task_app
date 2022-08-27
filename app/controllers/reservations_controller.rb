class ReservationsController < ApplicationController
 
  def index
    @rooms = Room.all
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:content, :room_id, :start_date, :end_date, :people))
        if @reservation.save
          flash[:notice] = "予約が完了しました"
          redirect_to :reservations
        else
          render "reservations"
        end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end
end