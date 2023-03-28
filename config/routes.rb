Rails.application.routes.draw do  
  resources :owners, only: [:create, :show, :update]  
  resources :rider_bikes, only: [:create, :show, :update]  
  resources :riders, only: [:create, :show, :update]
  resources :bikes, only: [:create, :index, :show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # These routes shall work to authenticate both owners and rider, and subsequently help log them out
  post "/login", to: "sessions#create"
  # log out session
  delete "/logout", to: "sessions#destroy"
  # get logged in owner
  get "/o-me", to: "owners#show_me"
  # get logged in client
  get "/c-me", to: "clients#show_me"
end
