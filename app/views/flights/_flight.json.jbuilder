json.extract! flight, :id, :flight_number, :depart_dt, :from, :to, :created_at, :updated_at
json.url flight_url(flight, format: :json)
json.rows flight.plane.rows
json.columns flight.plane.columns
json.seats_left (flight.plane.rows * flight.plane.columns - flight.reservations.count)
