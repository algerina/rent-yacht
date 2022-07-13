class V1::ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    reservations = if current_user.admin?
                     Reservation.all
                   else
                     current_user.reservations
                   end

    if reservations == []
      render json: { message: 'No reservations found' }, status: :not_found
    else
      render json: ReservationSerializer.new(reservations).serializable_hash[:data], status: :ok
    end
  end

  def show
    reservation = Reservation.find_by(id: params[:id])
    if reservation.nil?
      render status: 404, json: { error: 'Reservation not found' }.to_json
    else
      render json: ReservationSerializer.new(reservation).serializable_hash[:data][:attributes], status: :ok
    end
  end

  def create
    reservation = current_user.reservations.new(reservation_params)
    reservation.cost = reservation.yacht.price * reservation.days_number
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
      render json: { message: 'Reservation deleted' }.to_json, status: :ok
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:yacht_id, :city, :start_date, :days_number)
  end
end
