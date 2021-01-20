# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

group = Group.create!({ name: "Noobs#{Time.now.to_i}", group_type: 'Not study', status: :active })
user = User.create!(first_name: "Vanya#{Time.now.to_i}", last_name: 'Petrenkovic', personal_data: { username: 'Van' }, password: 'password2', email: "emaill#{Time.now.to_i}@email.com")
Membership.create!(user: user, group: group)
