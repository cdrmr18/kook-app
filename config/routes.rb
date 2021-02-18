Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :bookings, only: [ :index, :show, :destroy, :edit, :update] do
    resources :chef_reviews, only: [:new, :create]
    resources :recipe_reviews, only: [:new, :create]
  end

 # recipes/:id/bookings/new
  resources :recipes do
    resources :bookings, only: [:new, :create]
  end

  resources :chefs, only: [:show, :new, :create, :index]
  resources :chats, only: [:index, :show] do
    resources :messages, only: [:create, :destroy]
  end

end
