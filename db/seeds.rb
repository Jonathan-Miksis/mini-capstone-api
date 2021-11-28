10.times do
  new_product = Product.new(name: "Budweisser", price: 5.99, description: "cheaper beer")
  new_product.save
end