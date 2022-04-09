Rails.application.routes.draw do
  
  root 'tweets#index'  # 追加
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ================ここをネスト(入れ子)した形に変更
  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end
  #======================================
  
  resources :users  # 追加
end
