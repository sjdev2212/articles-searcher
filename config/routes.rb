Rails.application.routes.draw do
  resources :articles

  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  root "articles#index"
end
