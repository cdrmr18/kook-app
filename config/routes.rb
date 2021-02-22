Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # /bookings -- /bookings/:id -- /bookings/:id/edit
  resources :bookings, only: [ :index, :show, :destroy, :edit, :update] do
    # /bookings/:id/show
    resources :chef_reviews, only: [:create]
    # /bookings/:id/show
    resources :recipe_reviews, only: [:create]
  end

 # All CRUD actions for recipes
  resources :recipes do
    # /recipes/:id/bookings/new
    resources :bookings, only: [:new, :create]
  end

  # /chats  -- /chats/:id
  resources :chats, only: [:index, :show] do
    # chats/:id/messages
    resources :messages, only: [:create, :destroy]
  end

  # /chefs/:id -- /chefs/new  -- /chefs
  resources :chefs, only: [:show, :new, :create, :index]

end
