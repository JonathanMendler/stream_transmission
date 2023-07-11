Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/games" => "games#index"
  post "/games" => "games#create"
  get "/games/:id" => "games#show"
  patch "/games/:id" => "games#update"
  delete "/games/:id" => "games#destroy"

  get "/stats" => "stats#index"
  post "/stats" => "stats#create"
  patch "/stats/:id" => "stats#update"

  post "/sessions" => "sessions#create"
  
end
