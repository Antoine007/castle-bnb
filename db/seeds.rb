# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

castle_list = [
  ["Château de la Hulpe",50.737932,4.472067],
  ["Château de Chenonceau",47.32487,1.0703],
  ["Alhambra",37.1760458,-3.5890506],
  ["Elvis' Graceland",35.0471127,-90.0259679],
  ["Beijing Summer Palace",39.9388838,116.3974589],
  ["Château de Chambord",47.616126,1.517218],
  ["Château Royal d'Amboise",47.3962409,0.9995249]
]

castle_list.each do |castle_name, lat, lng|
  Castle.create(name: castle_name, latitude: lat, longitude: lng)
end
