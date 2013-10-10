BeerFlow::Application.routes.draw do

  get '/users/signout', to: 'users#signout'
  get '/users/signin', to: 'users#signin'

  post '/users/authenticate', to: 'users#authenticate'

  resources :users, except: [:index, :edit, :update, :destroy]
  resources :answers, except: [:index, :new, :edit, :update, :destroy, :show]
  resources :questions, except: [:destroy, :update, :edit]


  root to: 'questions#index'

end
