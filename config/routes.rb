Rails.application.routes.draw do
  root 'static_cars#home'

  get '/about', to: 'static_cars#about'
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
