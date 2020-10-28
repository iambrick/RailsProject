Rails.application.routes.draw do
  resources :pokemons, only: [:index, :show]
  resources :regions, only: [:index, :show]
  resources :types, only: [:index, :show]
  resources :abilities, only: [:index, :show]
  resources :about, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
