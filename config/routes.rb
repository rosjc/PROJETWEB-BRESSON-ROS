Rails.application.routes.draw do
  devise_for :utilisateurs
  resources :recettes
  root "recettes#index"
end
