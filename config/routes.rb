Rails.application.routes.draw do
  resources :wallpapers do 
  	resources :comments
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'wallpapers#index'

  get 'about', to: 'wallpapers#about'
end
