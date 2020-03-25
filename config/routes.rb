Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: [:index, :create, :new, :show] do
    resources :bookings, only: [:new, :create]
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
