Rails.application.routes.draw do

  get('/', { to: 'posts#index', as: 'root' })

  resources :users, only: [:new, :create, :edit, :update] do
    collection do 
      get 'edit_password'
      get 'update_password'
    end 
end
  resource :session, only: [:new, :create, :destroy]

  resources :posts do
    resources :comments, only: [:create, :destroy]
    end
end