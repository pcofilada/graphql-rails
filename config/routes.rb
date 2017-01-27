Rails.application.routes.draw do
  resources :queries, via: [:post, :options]
end
