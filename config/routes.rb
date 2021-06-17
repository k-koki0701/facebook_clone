Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  root 'sessions#new'
  resources :relationships, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show]
  resources :conversations do
    resources :messages
  end
  resources :blogs do
    resources :comments
    collection do
      post :confirm
    end
  end
end
