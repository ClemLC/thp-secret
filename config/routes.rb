Rails.application.routes.draw do
  root  'static_pages#home'
  get   '/home',   to: 'static_pages#home'
  get   '/signup', to: 'users#new'
  post  '/signup', to: 'user#create'
  get   '/secret', to: 'static_pages#secret'
  get   '/login',  to: 'sessions#new'
  post  '/login',  to: 'sessions#create'
  delete'/login',  to: 'sessions#destroy'
  resources :users
end
