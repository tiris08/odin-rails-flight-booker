require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#  airports = ["ATL", "DFW", "DEN", "ORD", "LAX", "CLT", "IAH", "LAS", "MCO"]

# airports.each do |a|
#   Airport.create(code: a)
# end

10.times do
  Flight.create(
    start: Faker::Date.forward(days: 30),
    duration: "3 hours",
    from_airport_id: 10,
    to_airport_id: 11
  )
end
10.times do
  Flight.create(
    start: Faker::Date.forward(days: 30),
    duration: "2 hours",
    from_airport_id: 10,
    to_airport_id: 12
  )
end
10.times do
  Flight.create(
    start: Faker::Date.forward(days: 30),
    duration: "3 hours",
    from_airport_id: 11,
    to_airport_id: 10
  )
end
10.times do
  Flight.create(
    start: Faker::Date.forward(days: 30),
    duration: "4 hours",
    from_airport_id: 11,
    to_airport_id: 12
  )
end
10.times do
  Flight.create(
    start: Faker::Date.forward(days: 30),
    duration: "2 hours",
    from_airport_id: 12,
    to_airport_id: 11
  )
end
10.times do
  Flight.create(
    start: Faker::Date.forward(days: 30),
    duration: "4 hours",
    from_airport_id: 12,
    to_airport_id: 10
  )
end

