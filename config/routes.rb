Rails.application.routes.draw do
  devise_for :users

  root to: "lifts#index"

  resources :lifts do
    resources :reviews, only: [:new, :create, :show, :index, :destroy]
  end

  resources :users do
    resources :lifts, only: [:destroy]
  end
end
