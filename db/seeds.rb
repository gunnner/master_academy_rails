# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# group = Group.create!({ name: "Noob#{Time.now.to_i}", group_type: 'Not study', status: :active })
# user = User.create!(first_name: "Vanya#{Time.now.to_i}", last_name: "Petrenkovic#{Time.now.to_i}",
#                     personal_data: { username: "Van #{Time.now.to_i}" }, password: "password#{Time.now.to_i}",
#                     email: "email#{Time.now.to_i}@email.com", birthday: Time.new(rand(1914..2000), rand(1..12), rand(1..28)))
# Membership.create!(user: user, group: group)
#
# Post.create!(user_id: rand(1..5), title: 'Lorem ipsum dolor',
#              body: 'Lorem ipsum dolor sit amet, consectetur adipiscing
#                    elit, sed do eiusmod tempor incididunt ut labore et dolore
#                     magna aliqua. Ut enim ad minim veniam, quis nostrud
#                     exercitation ullamco laboris nisi ut aliquip ex ea
#                     commodo consequat. Duis aute irure dolor in reprehenderit
#                     in voluptate velit esse cillum dolore eu fugiat nulla
#                     pariatur. Excepteur sint occaecat cupidatat non proident,
#                     sunt in culpa qui officia deserunt mollit anim id est
#                     laborum.', published_at: Time.now)
#
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?