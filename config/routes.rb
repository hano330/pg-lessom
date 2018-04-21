Rails.application.routes.draw do
  root to: 'users#index'
  resources :curriculums
  resources :users do
    resources :users_curriculums
  end
  resources :skills
  resources :searches
end
