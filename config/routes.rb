Rails.application.routes.draw do
  # root to: "boards#index"
  resources :users
  resources :boards
  resources :tiles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
