Rails.application.routes.draw do
  get 'reports/index'

  root 'pages#index'

  resources :projects do
    resources :builds, param: :number
    resources :reports
  resources :settings
  end

  post '/hooks/:project_id', to: 'builds#create'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    get 'sign_in', to: redirect('/users/auth/github'), as: :new_user_session
    get 'sign_out', :to => 'users/devise/sessions#destroy', as: :destroy_user_session
  end
end
