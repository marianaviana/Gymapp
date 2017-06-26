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

  resources :gymcards do
    resources :cycles
    collection do
      get 'clients'
    end
  end
end
