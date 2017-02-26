Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :groups, expect: [:show, :destory] do
    resources :messages, only: :index
  end
end
