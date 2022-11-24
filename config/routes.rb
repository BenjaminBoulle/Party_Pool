Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :locations do
    resources :bookings, only: %i[index new create]
    resources :reviews, only: %i[index new create]
  end
  resources :bookings, only: %i[destroy]
  resources :reviews, only: %i[destroy]
end
