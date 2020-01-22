Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, :favorites, :comments
  resources :posts do
    get :media, on: :member
  end
end
