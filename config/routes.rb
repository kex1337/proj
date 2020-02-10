Rails.application.routes.draw do

 root to: 'pages#home'
 get 'pages/catalog' 
  devise_for :users
  resources :items




end
