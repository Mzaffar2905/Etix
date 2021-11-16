Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'registration_successfull', to: 'pages#registration_sucessfull'
  resources :registrations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
