Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'home#index'

  resources :clients
  resources :employees
  resources :equipment
  resources :assessments do
    collection do
      get 'clients'
    end
  end

  resources :gymcards do
    resources :cycles
    collection do
      get 'clients'
    end
  end
end
