# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

group = Group.create!({ name: "Noobssss#{Time.now.to_i}", group_type: 'Not studyyyy', status: :active })
user = User.create!(first_name: "Vanyaaaa#{Time.now.to_i}", last_name: 'Petrenkoviccccc', personal_data: { username: "Vannaawwnn #{Time.now.to_i}" }, password: "password#{Time.now.to_i}", email: "emailllll#{Time.now.to_i}@email.com", birthday: Time.new(rand(1914..2000), rand(1..12), rand(1..28)))
Membership.create!(user: user, group: group)
