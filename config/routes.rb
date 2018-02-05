Rails.application.routes.draw do
  root 'users#index'
  get '/inscription', to: 'users#inscription'
end
