Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/guests/:id", to: "guests#show"
  # resources :guests, only: :show
  
  post "/guests/:id/rooms", to: "guest_rooms#create"
  # resources :guests, only: [show] do
  #   resources :rooms, only: :create, controller: :room_guests
  # end


  get "/rooms", to: "rooms#index"
end
