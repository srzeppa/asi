# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#50.times { Shops.create(:name => Faker::Name.name, :description => #Faker::Hipster.paragraph, :price => Faker::Number.between(1, 10)) }

500.times do |n|
    s = Shop.new
    s.name = Faker::Name.name
    s.description = Faker::Hipster.paragraph
    s.price = Faker::Number.between(1, 10)
    s.save
end
