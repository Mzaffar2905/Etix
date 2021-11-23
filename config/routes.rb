Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'registration_successful', to: 'pages#registration_successful'
  resources :car_registrations do
    member do
      get 'validation'
      patch 'validate'
      patch 'reject'
    end
  end
  get 'declaration_successful', to: 'pages#declaration_successful'
  resources :declarations do
    member do
    get 'validation'
    patch 'validate'
    patch 'reject'
    end
  end
  get 'generalquery_successful', to: 'pages#generalquery_successful'

  resources :general_questions do
    member do
    get 'validation'
    patch 'validate'
    patch 'reject'
    end
  end

    get 'fine_successful', to: 'pages#fine_successful'
  resources :fines do
    member do
    get 'validation'
    patch 'validate'
    patch 'reject'
    end
  end
  get 'legislation', to: 'pages#legislation'
  get 'dashboard_analyst', to: 'dashboards#dashboard_analyst', as: 'dashboard_analyst'
  get 'dashboard_user', to: 'dashboards#dashboard_user', as: 'dashboard_user'

  get 'dashboard_list_form', to: 'dashboards#dashboard_list_form', as: 'dashboard_list_form'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
