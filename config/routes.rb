Rails.application.routes.draw do
  # devise_for :admins
  # devise_for :vendors

  devise_for :user, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  
  scope module: :user do
    resources :orders, only: [:new, :create, :show], path_names: { new: "process" } do
      get "history", to: 'orders#index', on: :collection
      # TODO: 注文確認ページの有無を決定して追加する
    end

    resource :user, only: [:show, :edit, :update]
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    resources :watch_lists, only: [:index, :create, :destroy]
    resources :cards, only: [:index, :create, :edit, :update, :destroy]
  end
end
