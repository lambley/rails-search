Rails.application.routes.draw do
  root to: "pages#home"
  resources :pokemon, only: %i[index]
end
