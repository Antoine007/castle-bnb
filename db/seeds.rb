# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

castle_list = [
  ["Chateau de la Hulpe",50.737932,4.472067,4242,"castle.jpg",1,1000],
  ["Chateau de Chenonceau",47.32487,1.0703,4242,"castle.jpg",1,1000],
  ["Downton Abbey", 51.3349875,-1.240754,4242,"castle.jpg",1,1000],
  ["Alhambra",37.1760458,-3.5890506,4242,"castle.jpg",1,1000],
  ["Elvis' Graceland",35.0471127,-90.0259679,4242,"castle.jpg",1,1000],
  ["Beijing Summer Palace",39.9388838,116.3974589,4242,"castle.jpg",1,1000],
  ["Château de Chambord",47.616126,1.517218,4242,"castle.jpg",1,1000],
  ["Château Royal d'Amboise",47.3962409,0.9995249,4242,"castle.jpg",1,1000],
  ["Castle Black, The Wall"  ,51.32445,4.946591,4242,"castle.jpg",1,1000],
  ["The Red Keep, King's Landing"  , 51.300576 , 4.728115,4242,"castle.jpg",1,1000],
  ["Casterly Rock, Lannisterland" , 51.276449 , 4.421916,4242,"castle.jpg",1,1000],
  ["Winterfell, The North"  , 51.261084 , 4.568755,4242,"castle.jpg",1,1000],
  ["Highgarden, The Reach" , 51.256937 , 3.71842,4242,"castle.jpg",1,1000],
]

user_list = [
  ["Antoine", "KingMaker", "KingMaker@castle-bnb.com","Male", "Av. des Champs elysees", "antoinetheman", "12345678"]
]


castle_list.each do |castle_name, lat, lng, price, picture_file_name, user_id, beds|
  Castle.create(name: castle_name, latitude: lat, longitude: lng, price: price, picture_file_name: picture_file_name, user_id: user_id, beds: beds )
end

user_list.each do |first_name, last_name, email, gender, address, twitter, pw|
  User.create(first_name: first_name, last_name: last_name, email: email, gender: gender, address: address, twitter: twitter, password: pw)
end

