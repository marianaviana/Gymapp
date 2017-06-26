Rails.application.routes.draw do
  resources :check_ins
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'home#index'

  resources :clients
  resources :employees
  resources :equipment

  resources :pollock3
  resources :pollock7
  resources :icq

  resources :assessments do
    collection do
      get 'clients'
    end
  end

  get 'cycles/update_exercises', as: 'update_exercises'

  namespace :api do
    devise_for :users

    resources :gymcards do
      resources :cycles
    end

    resources :assessments
    resources :clients
  end  

  resources :gymcards do
    resources :cycles
    collection do
      get 'clients'
    end
  end
end
