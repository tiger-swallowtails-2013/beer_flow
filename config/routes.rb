BeerFlow::Application.routes.draw do

  resources :answers, except: [:index, :new, :edit, :update, :destroy]
  resources :questions, except: [:destroy, :update, :edit, :index]

end
