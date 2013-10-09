BeerFlow::Application.routes.draw do

  resources :questions, except: [:destroy, :update, :edit, :index]
  resources :answers, except: [:index, :new, :edit, :update, :destroy, :show]

end
