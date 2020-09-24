Rails.application.routes.draw do
  root 'courses#index'

  get 'about', to: 'pages#about'
  resources :students, except: [:destroy]
  resources :courses
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
end
