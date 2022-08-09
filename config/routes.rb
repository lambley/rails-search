Rails.application.routes.draw do
  # root to: "pages#home"
  root to: 'pokemons#index'
  resources :pokemons, only: %i[index]
end
