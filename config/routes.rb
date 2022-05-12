Rails.application.routes.draw do
  resources :enrollments
  get 'home/index'
  devise_for :users, :controllers => { registrations: 'users/registrations', 
  omniauth_callbacks: 'users/omniauth_callbacks'}

  resources :courses do
    resources :lessons
    resources :enrollments, only: [:new, :create]
  end
  resources :users, only: [:index, :edit, :show, :update]

  root 'home#index'
  get 'home/activity'
  #root 'static_pages#landing_page'
  #get 'static_pages/landing_page'
  #get 'static_pages/privacy_policy'
  get "privacy_policy",to:'static_pages#privacy_policy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
