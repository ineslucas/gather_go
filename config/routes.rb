Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #----------- TO HELP WITH CREATING A BOOKING --------
  # SUGGESTED ROUTE IS ACTUALLY: /parties/:id/bookings	POST	bookings	create // might need to be altered.
  # post '/bookings', to: 'bookings#create', as: 'bookings' - CURRENTLY COMMENTED

  resources :bookings, only: [ :new, :create ]

  resources :parties, only: [ :index, :show ]  # already has all 7 routes of parties
  # This is for the survey that will eventually lead to the creation of a new booking associated with a certain party id

  #----------- DASHBOARD AKA PROFILE --------
  get '/profile', to: 'pages#profile'

  #----------- CONFIRMATION PAGE -----------
  get 'bookings/:id/confirmation', to: "bookings#confirmation", as: :booking_confirmation
end
