Rails.application.routes.draw do  
  resources :owners, only: [:create, :show, :update]  
  resources :bikes, only: [:create, :index, :show, :update, :destroy]
  resources :riders, only: [:index, :create, :show, :update]   
  resources :rider_bikes, only: [:create, :update]  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get all bikes for a rider, based on their id
  get "/rider_bikes/bikes/:rider_id", to: "rider_bikes#bike_booked"
  # get all riders for an indivudual owner, based on the owners id
  get "/rider_bikes/riders/:owner_id", to: "rider_bikes#rider_booked"

  # get all bikes for an owner, based on their id
  get "/bikes/owner/:owner_id", to: "bikes#owner_bikes"
  # These routes shall work to authenticate both owners and rider, and subsequently help log them out
  post "/login", to: "sessions#create"
  # log out session
  delete "/logout", to: "sessions#destroy"
  # get logged in owner
  get "/o-me", to: "owners#show_me"
  # get logged in client
  get "/c-me", to: "riders#show_me"
end
