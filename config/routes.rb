Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks'
  }

  scope "(:locale)", locale: /es|de/ do

    resources :projects, only: [:index, :create, :new, :show] do
      resources :applications, only: [:new, :create]
    end

    get 'applications/:application_id/confirmation', to: 'applications#confirmation', as: :application_confirmation

    root to: 'pages#home'
    get 'ngos/home', to: 'ngos#home', as: :ngos_home
    get 'about-vamos', to: 'pages#about_vamos', as: :about_vamos
    get 'location', to: 'pages#filter_location', as: :filter_location
    get 'interests', to: 'pages#filter_interests', as: :filter_interests
    get "dashboard", to: "users#dashboard", as: :user_dashboard
    get 'time', to: 'pages#filter_time', as: :filter_time
    get 'users/profile', to: 'users#profile', as: :user_profile
    get 'privacy-policy-vamos', to: 'pages#privacy_policy_vamos', as: :privacy_policy_vamos

    resources :conversations, only: [:index, :show, :create] do
      resources :messages, only: [:create]
    end

    resources :teams, only: [:new, :create]

    get 'users/projects', to: 'users#projects', as: :user_projects #last modification

    resources :ngos, only: [:new, :create]

    resources :applications, only: [:index, :show] do
      resources :reviews, only: [:new, :create]
    end

    resources :applications, only: [] do
      member do
        patch "/accept_applications", to: "applications#accept_applications", as: :accept_applications
        patch "/reject_applications", to: "applications#reject_applications", as: :reject_applications
        patch "/accept_conversation", to: "applications#accept_conversation", as: :accept_conversation
        patch "/reject_conversation", to: "applications#reject_conversation", as: :reject_conversation
      end
    end

  end













  # needed for modal login

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
