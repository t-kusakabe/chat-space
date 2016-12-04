Rails.application.routes.draw do
  devise_for :users
  root 'chat_groups#index'
  resources :chat_groups, only: :index do
    resources :messages, only: :index
  end
end
