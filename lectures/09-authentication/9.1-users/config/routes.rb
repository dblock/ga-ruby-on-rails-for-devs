RailsMvc::Application.routes.draw do
  resources :things
  resources :users

  resources :sessions, only: %i[new create destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy'

  root to: 'home#index'
end
