Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }


  scope "(:locale)", locale: /es|de/ do
    root to: 'pages#home'
    get 'ngos/home', to: 'ngos#home', as: :ngos_home
    get 'about-vamos', to: 'pages#about_vamos', as: :about_vamos
    resources :projects, only: [:index, :create, :new, :show] do
    resources :bookings, only: [:new, :create]
    get 'bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: :booking_confirmation
    get "dashboard", to: "users#dashboard", as: :user_dashboard
  end
  end



  get 'location', to: 'pages#filter_location', as: :filter_location
  get 'interests', to: 'pages#filter_interests', as: :filter_interests
  get 'time', to: 'pages#filter_time', as: :filter_time
  get 'users/profile', to: 'users#profile', as: :user_profile
  get 'apply', to: 'pages#apply', as: :application


  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: [] do
    member do
          patch "/accept", to: "bookings#accept"
          patch "/reject", to: "bookings#reject"
    end
  end
  resources :ngos, only: [:new, :create]



  resources :teams, only: [:new, :create]

  resources :conversations, only: [:index, :show, :create] do
    resources :messages, only: [:create]
  end


  # needed for modal login

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
