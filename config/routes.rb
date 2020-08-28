Rails.application.routes.draw do
  resources :flights, only: [:create]
  resources :passengers
  # resources :airplanes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
