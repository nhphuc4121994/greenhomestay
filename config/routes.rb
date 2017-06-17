Rails.application.routes.draw do

  resources :facilities_homes
  resources :rooms
  resources :room_facilities
  resources :bath_types
  resources :bed_types
  resources :rooms
  resources :room_types
  resources :home_facilities
  resources :facilities
  resources :home_rules
  resources :rules
  resources :m_cities
  resources :m_prefs
  resources :home_types
  resources :homes do
    collection do
      get 'type', to: 'homes#getHomeByType'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #jwt
  resources :users, only: :create do
    collection do
      post 'confirm'
      post 'login'
    end
  end
end
