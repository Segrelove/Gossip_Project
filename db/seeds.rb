require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")
User.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'users'")
Gossip.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'gossips'")
Tag.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'tags'")
TagTable.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'tag_tables'")
PrivateMessage.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'private_messages'")





10.times do |x|
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Company.bs, email: Faker::Internet.email, age: rand(18..99), city_id: rand(1..x))
  p "User #{x + 1} créé!"
end

20.times do |x|
  Gossip.create(user_id: rand(1..10), title: Faker::BreakingBad.episode, content: Faker::ChuckNorris.fact)
  Tag.create(title: Faker::Pokemon.name)
  TagTable.create(tag_id: rand(1..x), gossip_id: rand(1..x))
  PrivateMessage.create(recipient_id: rand(1..20), sender_id: rand(1..20), content: Faker::Company.bs)
end
