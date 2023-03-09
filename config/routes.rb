Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :parties, only: [:index]

  #----------- FOR SURVEY --------
  get '/survey', to: 'pages#survey'

  #----------- TO HELP WITH CREATING A BOOKING --------
  # SUGGESTED ROUTE IS ACTUALLY: /parties/:id/bookings	POST	bookings	create // might need to be altered.
  # post '/bookings', to: 'bookings#create', as: 'bookings' - CURRENTLY COMMENTED

  resources :parties do
    resources :bookings, only: [:create]
  end
end
