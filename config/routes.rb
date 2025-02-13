Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  get 'articles/new', to: 'articles#new'
end
