Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #index action - shows all products
  get "/products", controller: "products", action: "index"

  #show action
  get "/products/:id", controller: "products", action: "show"
end
