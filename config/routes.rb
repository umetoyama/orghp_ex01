Rails.application.routes.draw do
  get 'top/index'
  root to: "top#index"
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registratons#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

  resources :users, only:[:index, :new, :show]
  resources :works, only:[:index, :new, :create]
  resources :topics do
    resources :comments, only:[:create, :destroy]
  end
  resources :companies, only:[:index]
  resources :contacts, only:[:new, :create]
  
end
