Rails.application.routes.draw do
  resources :users
  resources :sessions

  root  'static_pages#home'
  get   '/home',   to: 'static_pages#home'
  get   '/signup', to: 'users#new'
  post  '/signup', to: 'user#create'
  get   '/secret', to: 'static_pages#secret',   as: 'secret'
  get   '/login',  to: 'sessions#new'
  post  '/login',  to: 'sessions#create'
  delete'/login',  to: 'sessions#destroy',      as: 'logout'
end
