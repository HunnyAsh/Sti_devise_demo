Rails.application.routes.draw do
  devise_for :admins, skip: :sessions
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'dashboard/index', as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
