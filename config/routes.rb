BeerFlow::Application.routes.draw do

  resources :users, only: [:create, :show]
  get 'signup', to: 'users#new', as: 'new_user'

  resources :questions, only: [:new, :create, :show, :index]
  resources :answers, only: [:create] do
    resources :votes, only: [:create]
  end

  resources :sessions, only: [:create]
  get 'login', to: 'sessions#new', as: 'new_session'
  get 'logout', to: 'sessions#destroy'

  root to: 'questions#index'

end
