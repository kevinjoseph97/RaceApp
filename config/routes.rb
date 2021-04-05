Rails.application.routes.draw do

  resources :laptimes
  root 'application#home'

  
  resources :drivers
  resources :tracks


  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  get '/signout', to: 'sessions#destroy'

  get '/signup', to: 'drivers#new' 
  post '/signup', to: 'drivers#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
