Rails.application.routes.draw do
  
  resources :portfolios

  get 'about', to: 'pages#about'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  get 'php-items', to: 'portfolios#php'
  get 'ruby-items', to: 'portfolios#ruby'

  resources :blogs do 
      member do
          get :toggle_status
      end
  end
  
  
  root to: 'pages#home'

end
