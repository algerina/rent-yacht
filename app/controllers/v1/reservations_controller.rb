class V1::ReservationsController < ApplicationController
 
  def index
    render json: Reservation.all.to_json
  end

end