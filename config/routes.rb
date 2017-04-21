Rails.application.routes.draw do
  resources :notices
  resources :comments
  devise_for :users
  get '/noticias', to: 'notices#index'
  get '/perfil', to: 'uan#profile'
  get '/usuarios', to: 'uan#users'
  root 'uan#index'
end
