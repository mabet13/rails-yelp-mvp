Rails.application.routes.draw do

=begin  get 'reviews/new'
  get 'reviews/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "restaurants", to: "restaurants#index"

  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"

  get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch  "restaurants/:id",      to: "restaurants#update"

  get "restaurants/:id", to: "restaurants#show", as: :restaurant
=end
  resources :restaurants do

    resources :reviews, only: [ :new, :create ]
   end



  #get "restaurants/:id", to: "restaurants#show"

end
