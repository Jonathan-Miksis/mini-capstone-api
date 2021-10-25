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

  get "/suppliers" => "suppliers#index"

  get "/suppliers/:id" => "suppliers#show"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
