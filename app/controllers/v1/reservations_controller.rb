class V1::ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: Reservation.all.to_json
  end

  def show
    reservation = Reservation.find_by(id: params[:id])
    if reservation.nil?
      render status: 404, json: { error: 'Reservation not found' }.to_json
    else
      render json: reservation.to_json
    end
  end

  def create
    reservation = Reservation.new(reservation_params)
    if reservation.save
      render json: reservation.to_json
    else
      render status: 500, json: { error: 'Reservation could not be created' }.to_json
    end
  end

  def destroy
    reservation = Reservation.find_by(id: params[:id])
    if reservation.nil?
      render status: 404, json: { error: 'Reservation not found' }.to_json
    else
      reservation.destroy
      render json: { message: 'Reservation deleted' }.to_json
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :yacht_id, :city, :start_date, :end_date)
  end
end
