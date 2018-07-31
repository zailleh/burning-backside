json.partial! "flights/flight", flight: @flight


json.reservations! @flight.reservations do |r|
  json.row r.seat_row
  json.column r.seat_column
  json.name r.user.name
end
# json.attachments @message.attachments do |attachment|
#   json.filename attachment.filename
#   json.url url_for(attachment)
# end

# .extract! flight, :id, :flight_number, :depart_dt, :from, :to, :created_at, 
