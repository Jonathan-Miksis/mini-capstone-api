# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

200.times do
  new_product = Product.new(name: Faker::Beer.name, price: Faker::Number.decimal(l_digits: 2, r_digits: 2), image_url: Faker::Internet.url, description: Faker::Beer.style)
  new_product.save
end

