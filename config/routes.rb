BeerFlow::Application.routes.draw do

  resources :users, except: [:index, :edit, :update, :destroy]
  resources :answers, except: [:index, :new, :edit, :update, :destroy, :show]
  resources :questions, except: [:destroy, :update, :edit]

  get '/users/signout', to: 'users#signout'
  get '/users/signin', to: 'users#signin'

  root to: 'questions#index'

end
