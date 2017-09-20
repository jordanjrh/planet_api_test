# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

csv_text_planet = File.read(Rails.root.join('lib', 'seeds', 'milkway_planet_table.csv'))
csv_planet = CSV.parse(csv_text_planet, :headers => true, :encoding => 'ISO-8859-1')

csv_planet.each do |row|
   t = Planet.new
   if row['catchphrase']
     t.planet = row['planet_name']
     t.mass = row['planet_mass']
     t.rotation = row['roation_period']
     t.length = row['day_length']
     t.orbit = row['orbital_period']
     t.distance = row['distance_from_sun']
     t.temperature = row['mean_temperature']
     t.moons = row['number_of_moons']
     t.save
   end
 end
