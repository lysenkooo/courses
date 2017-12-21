Rails.application.routes.draw do
  devise_for :users

  resources :courses do
    resources :lessons
  end

  root to: 'courses#index'
end
