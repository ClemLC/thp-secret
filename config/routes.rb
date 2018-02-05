Rails.application.routes.draw do
  resources :users
  resources :sessions

  root  'static_pages#home'

  get    '/home',   to: 'static_pages#home'
  get    '/secret', to: 'static_pages#secret',   as: 'secret'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
