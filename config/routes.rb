Rails.application.routes.draw do

 
 root to: 'items#index' 
 get 'admin', to: 'items#admin'

 devise_for :users
 resources :items



end
