BeerFlow::Application.routes.draw do

  resources :users, only: [:create, :show]
  get 'signup', to: 'users#new', as: 'new_user'

  resources :questions, only: [:new, :create, :show, :index]
  resources :answers, only: [:create]

  resources :sessions, only: [:create]
  get 'login', to: 'sessions#new', as: 'new_session'
  post 'logout', to: 'sessions#destroy'

  root to: 'questions#index'

end