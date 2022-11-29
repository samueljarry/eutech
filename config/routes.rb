Rails.application.routes.draw do
  resources :test_pundits
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get "articles", to:"articles#index"
end
