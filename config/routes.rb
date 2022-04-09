Rails.application.routes.draw do
  
  root 'tweets#index'  # 追加
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member # 追加
    get :followers, on: :member # 追加
  end
end
