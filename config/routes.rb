Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registratons#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

end
