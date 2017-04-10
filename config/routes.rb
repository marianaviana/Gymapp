Rails.application.routes.draw do
  resources :assessments
  devise_for :users, controllers: { registrations: 'registrations' }
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
