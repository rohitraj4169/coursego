Rails.application.routes.draw do
  resources :lessons
  devise_for :users, :controllers => { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks'}
  resources :courses do
    member do
      delete :delete_video
    end
  end
  resources :users, only: [:index, :edit, :show, :update]
  root 'pages#home'
  get 'pages/activity'
  resources :youtube, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
