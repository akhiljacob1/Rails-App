Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  get "/new", to: "books#index"
  get "/search", to: "books#new"

  resources :bookreviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
