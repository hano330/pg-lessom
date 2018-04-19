Rails.application.routes.draw do
  root to: 'users#index'
  resources :curriculums
  resources :users
  resources :skills
  resources :searches
end
