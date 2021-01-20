# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

group = Group.create!({ name: "Students#{Time.now.to_i}", group_type: 'Study', status: :active })
user = User.create!( first_name: "Tolik#{Time.now.to_i}", last_name: 'Tolikovsky', personal_data: { username: 'Toliyan' },
                     password: 'password', email: "email#{Time.now.to_i}@email.com")
Membership.create!(user: user, group: group)
