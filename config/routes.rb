Rails.application.routes.draw do
 
  root 'pages#Index'

  resources :pets
   

  devise_for :users, :controllers => { registrations: 'registrations' }

  get '/home' => 'pages#Home'

  get '/user/:id' => 'pages#Profile'

  get '/explore' => 'pages#Explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
