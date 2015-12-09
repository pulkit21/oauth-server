Rails.application.routes.draw do

  # devise_for :users
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  # Set root as sign in/sign up page
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

end
