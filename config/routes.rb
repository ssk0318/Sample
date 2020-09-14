Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations' }
  devise_for :models

  get "users/show" => "users#show"
  get 'articles/start'
  root 'articles#start'
  
  resources :articles
  resources :users, only: [:show]
end




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
