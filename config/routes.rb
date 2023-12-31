Rails.application.routes.draw do
  devise_for :users
  root to: "super_powers#index"
  resources :super_powers do
    resources :reservations, only: %i[new create show]
  end
  get "/dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
