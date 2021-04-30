require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# airports = ["ATL", "DFW", "DEN", "ORD", "LAX", "CLT", "IAH", "LAS", "MCO"]

# airports.each do |a|
#   Airport.create(code: a)
# end

25.times do
  Flight.create(
    start: Faker::Time.forward(days: 365, period: :all, format: :short),
    duration: "#{Faker::Number.between(from: 2, to: 10)} hours",
    from_airport_id: Faker::Number.between(from: 1, to: 9),
    to_airport_id: Faker::Number.between(from: 1, to: 9)
  )
end

