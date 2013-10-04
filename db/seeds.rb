road = BuildType.create({name: 'road'})
fixie = BuildType.create({name: 'fixed gear'})
city = BuildType.create({name: 'city'})

road_component_types = [
  'Frame',
  'Fork',
  'Front rim',
  'Rear rim',
  'Front spokes',
  'Rear spokes',
  'Front hub',
  'Rear hub',
  'Front tire',
  'Front tire tube',
  'Read tire',
  'Rear tire tube',
  'Cassette',
  'Chain',
  'Crankset',
  'Pedals',
  'Bottom bracket cartridge',
  'Brake front',
  'Brake rear',
  'Brake lever Front',
  'Brake lever Rear',
  'Front shifter',
  'Read shifter',
  'Front derailleur',
  'Rear derailleur',
  'Stem',
  'Bar',
  'Seatpost',
  'Saddle',
  'Headset'
]

fixie_component_types = [
  'Frame',
  'Fork',
  'Front rim',
  'Rear rim',
  'Front spokes',
  'Rear spokes',
  'Front hub',
  'Rear hub',
  'Front tire',
  'Front tire tube',
  'Read tire',
  'Rear tire tube',
  'Chain',
  'Crankset',
  'Pedals',
  'Bottom bracket cartridge',
  'Brake front',
  'Brake rear',
  'Brake lever Front',
  'Brake lever Rear',
  'Stem',
  'Bar',
  'Seatpost',
  'Saddle',
  'Headset'
]

city_component_types = [
  'Frame',
  'Fork',
  'Front rim',
  'Rear rim',
  'Front spokes',
  'Rear spokes',
  'Front hub',
  'Rear hub',
  'Front tire',
  'Front tire tube',
  'Read tire',
  'Rear tire tube',
  'Cassette',
  'Chain',
  'Crankset',
  'Pedals',
  'Bottom bracket cartridge',
  'Brake front',
  'Brake rear',
  'Brake lever Front',
  'Brake lever Rear',
  'Front shifter',
  'Read shifter',
  'Front derailleur',
  'Rear derailleur',
  'Stem',
  'Bar',
  'Seatpost',
  'Saddle',
  'Headset',
  'Front Fender',
  'Read Fender',
  'Read Luggage rack',
  'Front Luggage rack',
  'Bell'
]

road_component_types.each do |name|
  ct = ComponentType.find_or_create_by(name: name)
  puts "ComponentType #{name} added to Road Bike." if road.components << ct
end
road.save

fixie_component_types.each do |name|
  ct = ComponentType.find_or_create_by(name: name)
  puts "ComponentType #{name} added to Fixed Gear Bike." if fixie.components << ct
end
fixie.save

city_component_types.each do |name|
  ct = ComponentType.find_or_create_by(name: name)
  puts "ComponentType #{name} added to City Bike." if city.components << ct
end
city.save
