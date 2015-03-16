Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'tasks#index'
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}
  resources :users
  resources :tasks


end
