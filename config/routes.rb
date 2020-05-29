Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks'
  }

  scope "(:locale)", locale: /es|de/ do
    root to: 'pages#home'
    get 'ngos/home', to: 'ngos#home', as: :ngos_home
    get 'about-vamos', to: 'pages#about_vamos', as: :about_vamos
    get 'location', to: 'pages#filter_location', as: :filter_location
    get 'interests', to: 'pages#filter_interests', as: :filter_interests
    get "dashboard", to: "users#dashboard", as: :user_dashboard
    get 'time', to: 'pages#filter_time', as: :filter_time
    get 'users/profile', to: 'users#profile', as: :user_profile
    get 'apply', to: 'pages#apply', as: :application
    get 'privacy-policy-vamos', to: 'pages#privacy_policy_vamos', as: :privacy_policy_vamos

    resources :conversations, only: [:index, :show, :create] do
      resources :messages, only: [:create]
    end

    resources :teams, only: [:new, :create]

    get 'users/applications', to: 'users#applications', as: :user_applications
    get 'users/projects', to: 'users#projects', as: :user_projects #last modification


    resources :ngos, only: [:new, :create]

    resources :projects, only: [:index, :create, :new, :show] do
    resources :bookings, only: [:new, :create]
    get 'bookings/:booking_id/confirmation', to: 'bookings#confirmation', as: :booking_confirmation
    end

    resources :bookings, only: [] do
      resources :reviews, only: [:new, :create]
    end

    resources :bookings, only: [] do
      member do
        patch "/accept", to: "bookings#accept"
        patch "/reject", to: "bookings#reject"
      end
    end

  end













  # needed for modal login

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
