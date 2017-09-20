# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'planet_table.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
   t = Planet.new
     t.planet_name = row['planet_name']
     t.planet_mass = row['planet_mass']
     t.rotation_period = row['rotation_period']
     t.day_length = row['day_length']
     t.orbital_period = row['orbital_period']
     t.distance_from_sun = row['distance_from_sun']
     t.mean_temperature = row['mean_temperature']
     t.number_of_moons = row['number_of_moons']
     puts "#{t.planet_name}, #{t.number_of_moons} saved"
     t.save
end
puts "There are now #{Planet.count} rows in the transactions table"
