Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'location', to: 'pages#filter_location', as: :filter_location
  get 'interests', to: 'pages#filter_interests', as: :filter_interests
  get 'time', to: 'pages#filter_time', as: :filter_time

  resources :projects, only: [:index, :create, :new, :show] do
    resources :bookings, only: [:new, :create]
   end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
