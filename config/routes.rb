Rails.application.routes.draw do
  get 'searches/index'

  get 'searchs/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  resources :curriculums
  resources :users
  resources :skills
  resources :searchs
end
