# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

group = Group.create!({ name: "Noob#{Time.now.to_i}", group_type: 'Not study', status: :active })
user = User.create!(first_name: "Vanya#{Time.now.to_i}", last_name: "Petrenkovic#{Time.now.to_i}",
                    personal_data: { username: "Van #{Time.now.to_i}" }, password: "password#{Time.now.to_i}", email: "email#{Time.now.to_i}@email.com", birthday: Time.new(rand(1914..2000), rand(1..12), rand(1..28)))
Membership.create!(user: user, group: group)
# post = Post.create!(users_id: User.last, title: 'Our football team', body: 'The team from our city wins today in their arch enemies',
#              published_at: Time.now)

# post = Post.create(users_id: 1, title: 'Our football team',
#                    body: 'The team from our city wins today in their arch enemies', published_at: Time.now)
