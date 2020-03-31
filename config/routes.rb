Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'location', to: 'pages#filter_location', as: :filter_location
  get 'interests', to: 'pages#filter_interests', as: :filter_interests
  get 'time', to: 'pages#filter_time', as: :filter_time
  get 'users/:id/profile', to: 'users#profile'

  resources :projects, only: [:index, :create, :new, :show] do
    resources :bookings, only: [:new, :create]
   end

  resources :ngos, only: [:new, :create]

  resources :teams, only: [:create]

  get "dashboard", to: "users#dashboard"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
