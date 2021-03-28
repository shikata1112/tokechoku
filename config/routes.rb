Rails.application.routes.draw do
  # devise_for :admins
  # devise_for :vendors

  devise_for :user, controllers: {
    sessions:      "users/sessions",
    passwords:     "users/passwords",
    registrations: "users/registrations"
  }

  scope module: :common do
    get "top", to: 'home#top'
    get "about", to: 'home#about'
    get "user_guide", to: 'home#user_guide'
    get "warranty", to: 'home#warranty'
    get "vendor_guide", to: 'home#vendor_guide'

    resources :watches, only: [:show, :index]
    resources :brands, only: [:index]
    resources :models, only: [:index]
  end

  scope module: :user do
    resources :orders, only: [:new, :create, :show], path_names: { new: "process" } do
      collection do
        get "history", to: "orders#index"
        get "payment", to: "orders#payment"
        get "completed", to: "orders#thanks"
      end
    end

    resource :user, only: [:edit, :update]
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    resources :watch_lists, only: [:index, :create, :destroy]
    resources :cards, only: [:index, :create, :edit, :update, :destroy]
  end
end
