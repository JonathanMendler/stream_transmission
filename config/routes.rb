Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/users" => "users#index"
  post "/users" => "users#create"

  get "/games" => "games#index"
  post "/games" => "games#create"

  get "/user_statistics" => "user_statistics#index"
  post "/user_statistics" => "user_statistics#create"
end
