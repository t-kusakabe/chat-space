Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :groups, only: :index do
    resources :messages, only: :index
  end
end
