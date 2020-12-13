# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == 'development'
  (1..50).each do |i|
    Aquarium.create(name: "水族館 #{i}", body: "水族館の説明 #{i}", address: "水族館の住所 #{i}", official: "公式HPのURL #{i}")
  end
end
