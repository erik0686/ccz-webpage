Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :announcements
  resources :students
  resources :directors

  resources :projects do
    patch :change_status2, on: :collection
  end
  
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
    unauthenticated :user do
      root "devise/sessions#new", as: :unauthenticated_root
    end
  end

	get 'home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


