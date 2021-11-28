10.times do
  new_product = Product.new(name: Faker::Beer.name, price: Faker::Number.decimal(l_digits: 2, r_digits: 2), description: Faker::Beer.style)
  new_product.save
end