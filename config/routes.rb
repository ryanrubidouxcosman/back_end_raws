Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/raws" => "raws#index"
    get "/raws/new" => "raws#new"
    post "/raws" => "raws#create"
    get "/raws/:id" => "raws#show"
    get "/raws/:id/edit" => "raws#edit"
    patch "/raws/:id" => "raws#update"
    delete "/raws/:id" => "raws#destroy"

    get "/products" => "products#index"
    get "/products/new" => "products#new"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    get "/products/:id/edit" => "products#edit"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
  end
end
