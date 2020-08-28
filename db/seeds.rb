# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airplane.destroy_all
Passenger.destroy_all
Flight.destroy_all


airplane1 = Airplane.create(airline: "United")
airplane2 = Airplane.create(airline: "Frontier")
airplane3 = Airplane.create(airline: "American Airlines")
airplane4 = Airplane.create(airline: "Spirit")
airplane5 = Airplane.create(airline: "Southwest")

sanjeev = Passenger.create(name: "Sanjeev")
sitaram = Passenger.create(name: "Sitaram")
sarada = Passenger.create(name: "Sarada")
anju = Passenger.create(name: "Anju")
anil = Passenger.create(name: "Anil")
susan = Passenger.create(name: "Susan")

Flight.create(airplane: airplane1, passenger: anil)
Flight.create(airplane: airplane4, passenger: anju)
Flight.create(airplane: airplane1, passenger: sarada)
Flight.create(airplane: airplane2, passenger: sitaram)
Flight.create(airplane: airplane5, passenger: sanjeev)
Flight.create(airplane: airplane3, passenger: anil)