Hogwarts::Application.routes.draw do
  root to: 'houses#index'

  resources :houses
  resources :students

end
# resources :houses, only: [:index, :show, :new]
# resources :students, only: [:index, :show, :new]
