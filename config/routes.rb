Rails.application.routes.draw do
  resources :publications
  resources :tags
  root "publications#index"
end