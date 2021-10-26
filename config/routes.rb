Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #index action - shows all products
  get "/products", controller: "products", action: "index"

  #show action - call upon a specific product
  get "/products/:id", controller: "products", action: "show"

  #post action - create new
  post "/products" => "products#create"

  #patch action - update specific item
  patch "/products/:id" => "products#update"

  #destory action - remove item
  delete "/products/:id" => "products#destroy"

  #show all suppliers
  get "/suppliers" => "suppliers#index"

  #look up one supplier
  get "/suppliers/:id" => "suppliers#show"

  #user routes - create a user and to login
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  #for the orders - create a new one
  post "/orders" => "orders#create"

  get "/orders/:id" => "orders#show"

  get "/orders" => "orders#index"
end
