# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Admin",
             email: "admin@admin.com",
             password:              "admin123",
             password_confirmation: "admin123",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@admin.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
3.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.complaints.create!(content: content) }
end