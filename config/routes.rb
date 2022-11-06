Rails.application.routes.draw do
 
  resources :home
  resources :welcome
  resources :team
  resources :contacts
  resources :cities
  resources :gossips
  resources :users
  resources :sessions
  root "welcome#index"
  #get 'gossips/:id' => 'gossips#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
