Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :listings, only: %i[index show new create] do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    # root "articles#index"
    resources :bookings, only: %i[new create edit update]
    resources :reviews, only: %i[index new create]
  end

  get "/dashboard", to: "dashboard#show"
  patch "/dashboard", to: "dashboard#booking_update", as: :booking_update
  resources :reviews, only: %i[edit update destroy]
end
