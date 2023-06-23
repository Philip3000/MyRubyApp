Rails.application.routes.draw do
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "welcome#index"
  get '/about', to: 'pages#about'
  get '/signup', to: 'members#new'
  post '/signup', to: 'members#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
