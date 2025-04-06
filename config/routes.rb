Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :articles do 
    resources :comments, except: [:show, :index]
  end
  resources :profiles, param: :user_name
  get "profiles/:user_name/about", to: "profiles#about", as: "profile_about"
end
