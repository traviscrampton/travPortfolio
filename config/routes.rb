Rails.application.routes.draw do

  devise_for :users
  root "home#index"

  resources :blogs do
    resources :posts
  end

  resources :blogs do
    resources :pics
  end

end
