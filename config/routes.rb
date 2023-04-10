Rails.application.routes.draw do

  devise_for :users
  root "users#index"
  
  devise_scope :user do 
    authenticated :user do 
      root 'users#index', as: :authenticated_root 
    end
    unauthenticated do 
      root 'devise/sessions#new', as: :unauthenticated_root 
    end 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  post '/users/:user_id/add_like/:id' =>  'posts#index', as: :like

  resources :users, only: %i[index show] do 
    resources :posts, only: %i[index new create show]
  end

  resources :posts do
    resources :comments, only: %i[create]
    resources :likes, only: %i[create]
  end
end
