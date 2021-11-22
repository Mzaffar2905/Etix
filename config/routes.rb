Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'registration_successful', to: 'pages#registration_successful'
  resources :car_registrations do
    member do
      patch 'validate'
      patch 'reject'
    end
  end
  get 'declaration_successful', to: 'pages#declaration_successful'
  resources :declarations
  get 'generalquery_successful', to: 'pages#generalquery_successful'

  resources :general_questions

    get 'fine_successful', to: 'pages#fine_successful'
  resources :fines
  get 'legislation', to: 'pages#legislation'
  get 'dashboard_analyst', to: 'dashboards#dashboard_analyst', as: 'dashboard_analyst'
  get 'dashboard_user', to: 'dashboards#dashboard_user', as: 'dashboard_user'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
