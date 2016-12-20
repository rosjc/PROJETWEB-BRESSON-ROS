Rails.application.routes.draw do
  resources :recettes
  root "recettes#index"
end
