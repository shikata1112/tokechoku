Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions:      "users/sessions",
    passwords:     "users/passwords",
    registrations: "users/registrations"
  }

  devise_for :vendors, controllers: {
    sessions:      "vendors/sessions",
    passwords:     "vendors/passwords",
    registrations: "vendors/registrations"
  }

  devise_for :admins, controllers: {
    sessions:      "admins/sessions",
    passwords:     "admins/passwords",
    registrations: "admins/registrations"
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

    resource :user, only: [:edit, :update], path_names: { edit: "profile" }
    resources :addresses, only: [:index, :create, :edit, :update, :destroy], path_names: { edit: "update" }
    resources :watch_lists, only: [:index, :create, :destroy]
    resources :cards, only: [:index, :create, :edit, :update, :destroy], path_names: { edit: "update" }
  end

  namespace :vendor do
    resources :watches, path_names: { new: "registration", edit: "update" }
    resources :orders, only: [:index, :show]
  end

  scope module: :vendor do
    resource :vendor, only: [:show, :edit, :update], path_names: { edit: "update" }
  end

  namespace :admin do
    resources :members, only: [:index, :show, :edit, :update]
    resources :vendors, only: [:index, :show, :edit, :update]
    resources :inquiries, only: [:index, :show]
  end
end
