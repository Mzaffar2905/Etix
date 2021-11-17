Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'registration_successfull', to: 'pages#registration_successfull'
  resources :car_registrations do
    get 'declaration_successfull', to: 'pages#declaration_sucessfull'
    resources :declarations
  end
  get 'generalquerie_successfull', to: 'pages#generalquerie_sucessfull'
  resources :general_queries

    get 'fine_successfull', to: 'pages#fine_sucessfull'
  resources :fines

  get 'dashboards/:user_id', to: 'dashboards#show', as: 'dashboard_analyst'
  get 'dashboards/:user_id', to: 'dashboards#index', as: 'dashboard_user'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
