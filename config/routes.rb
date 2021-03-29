Rails.application.routes.draw do

  devise_for :user,
    controllers: {
      sessions:      "devise_user/sessions",
      passwords:     "devise_user/passwords",
      registrations: "devise_user/registrations"
    },
    path: "",
    path_names: {
      sign_up: "",
      sign_in: "login",
      sign_out: "logout",
      registration: "signup"
    }

  devise_for :vendor,
    controllers: {
      sessions:      "devise_vendor/sessions",
      passwords:     "devise_vendor/passwords",
      registrations: "devise_vendor/registrations"
    },
    path_names: {
      sign_up: "",
      sign_in: "login",
      sign_out: "logout",
      registration: "signup"
    }

  devise_for :admin,
    controllers: {
      sessions:      "devise_admin/sessions",
      passwords:     "devise_admin/passwords",
      registrations: "devise_admin/registrations"
    },
    path_names: {
      sign_up: "",
      sign_in: "login",
      sign_out: "logout",
      registration: "signup"
    }

  scope module: :common do
    get "top", to: "home#top"
    get "about", to: "home#about"
    get "user_guide", to: "home#user_guide"
    get "warranty", to: "home#warranty"
    get "vendor_guide", to: "home#vendor_guide"

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
