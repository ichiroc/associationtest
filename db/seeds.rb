# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  g = Group.create!(name: Faker::Company.name)
  10.times do
    u = g.users.create!(name: Faker::Name.name)
    10.times do
      u.posts.create!(name: Faker::Lorem.sentence,
                      body: Faker::Lorem.paragraph(10))
    end
  end
end
