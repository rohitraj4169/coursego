Rails.application.routes.draw do
  devise_for :users
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
