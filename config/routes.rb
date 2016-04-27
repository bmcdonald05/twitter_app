Rails.application.routes.draw do
  get 'profiles/show'

  get 'profiles/index'

  devise_for :users
  resources :tweets
  resources :relationships

  resources :tweets do
  	resource :like
  end

  root 'tweets#index'

  get "profiles/:id" => "profiles#show", as: :profile

  get "profiles" => "profiles#index"

end
