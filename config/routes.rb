Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :clients
  resources :employees
  resources :equipment
  resources :gymcards do
    resources :cycles

    collection do
      get 'clients'
    end
  end
end
