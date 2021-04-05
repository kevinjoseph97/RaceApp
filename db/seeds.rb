# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Track.create([{ name: 'China' }, { name: 'Brazil' }, { name: 'USA' }])
Driver.create([{name: "Driver1", password_digest: "1"}, {name: "Driver2", password_digest: "2"}, {name: "Driver3", password_digest: "3"}])


Laptime.create([{track_id: 1, time: 1.34, driver_id: 1},{track_id: 2, time: 1.4, driver_id: 2},{track_id: 3, time: 2.34, driver_id: 3}])
