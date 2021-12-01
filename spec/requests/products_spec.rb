require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    it "should return all the products from the database" do
      supplier = Supplier.create!(
        name: "Dove",
        email: "dove@aol.com",
        phone_number: 748937293
      )
      product = Product.create!(
        name: "Soap",
        price: 5.99,
        description: "To be clean",
        supplier_id: 2,
      )
      get "/products"
      products = JSON.parse(response.body)
      expect(response).to have_http_status(200)
    end
  end
end
