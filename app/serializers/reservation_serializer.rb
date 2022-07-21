class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :city, :start_date, :days_number, :cost, :created_at, :user_id, :yacht_id
end
