BeerFlow::Application.routes.draw do

  get '/users/signout', to: 'users#signout'
  get '/users/signin', to: 'users#signin'

  get '/sessions/authenticate', to: 'authenticate#signin'
  post '/sessions/authenticate', to: 'sessions#authenticate'

  resources :users, except: [:index, :edit, :update, :destroy]
  resources :answers, except: [:index, :new, :edit, :update, :destroy, :show]
  resources :questions, except: [:destroy, :update, :edit]
  resources :sessions, only: [:create]

  root to: 'questions#index'

end
