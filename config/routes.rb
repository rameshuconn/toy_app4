Rails.application.routes.draw do
  get 'sessions/new'
  get "/signup", to: "users#new"
  # get 'static_pages/home'
  get "/help", to: "static_pages#help"
  get  "/about", to: "static_pages#about"
  get  "/contact", to: "static_pages#contact"
  root 'static_pages#home'
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"  
  resources :users
  resources :account_activations, only: [:edit]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end

