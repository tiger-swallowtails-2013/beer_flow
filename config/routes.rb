BeerFlow::Application.routes.draw do
  resources :questions, except: [:destroy, :update, :edit, :index]
end
