Rails.application.routes.draw do
  get 'booking_confirmation/show'
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  devise_for :users
  root to: 'pages#home'
  get '/tagged', to: "recipes#tagged", as: :tagged
  get 'chef_dashboard', to: 'dashboards#chef_dashboard', as: :chef_dashboard
  get 'user_dashboard', to: 'dashboards#user_dashboard', as: :user_dashboard

  # /bookings -- /bookings/:id -- /bookings/:id/edit
  resources :bookings, only: [ :index, :show, :destroy, :edit, :update] do
    # /bookings/:id/chef_reviews/new
    resources :chef_reviews, only: [:new, :create]
    # /bookings/:id/recipe_reviews/new
    resources :recipe_reviews, only: [:new, :create]
  end

 # All CRUD actions for recipes
  resources :recipes do
    member do 
      post 'toggle_favorite', to: "recipes#toggle_favorite"
    end
    collection do
      get :top
    end
    # /recipes/:id/bookings/new
    resources :bookings, only: [:new, :create]

    # recipes/:id/measurements/:id
    resources :measurements, only: [:new, :create]
  end

  # /chats  -- /chats/:id
  resources :chats, only: [:index, :show] do
    # chats/:id/messages
    resources :messages, only: [:create, :destroy]
  end

  # /chefs/:id -- /chefs/new  -- /chefs
  resources :chefs, only: [:show, :new, :create, :index, :destroy]
  resources :measurements, only: [:destroy]

  # checkout
  resources :bookings, only: [] do
    resources :checkout_sessions, only: [:new]
    resources :booking_confirmations, only: [:new]
  end
end
