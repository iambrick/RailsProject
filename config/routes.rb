Rails.application.routes.draw do

  get '/', to: redirect('/about')
  resources :pokemons, only: [:index, :show]
  resources :regions, only: [:index, :show]
  resources :types, only: [:index, :show]
  resources :abilities, only: [:index, :show]
  resources :about, only: [:index]

  get '/search' => 'pages#search', :as => 'search_page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
