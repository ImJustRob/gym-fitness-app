Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # exercise routes
  get "/exercises" => "exercises#index"
  get "/exercises/:id" => "exercises#show"
  post "/exercises" => "exercises#create"
  patch "/exercises/:id" => "exercises#update"
  delete "/exercises/:id" => "exercises#destroy"

  # routine routes
  get "/routines" => "routines#index"
  get "/routines/:id" => "routines#show"
  post "/routines" => "routines#create"
  patch "/routines/:id" => "routines#update"
  delete "/routines/:id" => "routines#destroy"
  # user routes
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    # comments routes
  get "/comments" => "comments#index"
  get "/comments/:id" => "comments#show"
  post "/comments" => "comments#create"
  patch "/comments/:id" => "comments#update"
  delete "/comments/:id" => "comments#destroy"

  # notes routes
  get "/notes" => "notes#index"
  get "/notes/:id" => "notes#show"
  post "/notes" => "notes#create"
  patch "/notes/:id" => "notes#update"
  delete "/notes/:id" => "notes#destroy"



  # Defines the root path route ("/")
  # root "posts#index"
end
