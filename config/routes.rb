Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # /bookings -- /bookings/:id -- /bookings/:id/edit
  resources :bookings, only: [ :index, :show, :destroy, :edit, :update] do
    # /bookings/:id/chef_reviews/new
    resources :chef_reviews, only: [:new, :create]
    # /bookings/:id/recipe_reviews/new
    resources :recipe_reviews, only: [:new, :create]
  end

 # All CRUD actions for recipes
  resources :recipes do
    collection do
      get :top
    # /recipes/:id/bookings/new
    resources :bookings, only: [:new, :create]

    # recipes/:id/measurements/new
    resources :measurements, only: [:new, :create]
    end
  end

  # /chats  -- /chats/:id
  resources :chats, only: [:index, :show] do
    # chats/:id/messages
    resources :messages, only: [:create, :destroy]
  end

  # /chefs/:id -- /chefs/new  -- /chefs
  resources :chefs, only: [:show, :new, :create, :index]

  #  measuremnts/:id
  resources :measurements, only: [:destroy]
end
