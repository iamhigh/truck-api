Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :trucks
get '/get_fields', to: 'truck#get_fields'
post '/add_truck', to: 'truck#add_truck'
get '/show_trucks', to: 'truck#show_trucks'

end