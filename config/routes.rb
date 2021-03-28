Rails.application.routes.draw do
  # devise_for :admins
  # devise_for :vendors

  devise_for :user, controllers: {
    sessions:      "users/sessions",
    passwords:     "users/passwords",
    registrations: "users/registrations"
  }
  
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
end
