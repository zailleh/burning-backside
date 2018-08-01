# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Flight.destroy_all
Plane.destroy_all
User.destroy_all
Reservation.destroy_all

u = User.create({
  name: "Test",
  email: "test@test.com",
  password: "chicken"
})

p = Plane.create({
  name: "Boeing 747",
  rows: 6,
  columns: 6
})

f = Flight.create({
  flight_number: 'BA213',
  from: "SYD",
  to: "MEL",
  depart_dt: DateTime.now
})

f.plane = p;
f.save

r = Reservation.new
r.user = u
r.flight = f
r.seat_row = 1
r.seat_column = 3
r.save