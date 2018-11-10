Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  get 'registration/new'
  resources 'potin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
