Rails.application.routes.draw do
  root 'chat_groups#index'
  resources :chat_groups, only: :index do
    resources :messages, only: :index
  end
end
