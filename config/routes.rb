Contactr::Application.routes.draw do

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :sessions

  resources :users do
    resources :contacts
  end

  root to: 'static_pages#home'
end
