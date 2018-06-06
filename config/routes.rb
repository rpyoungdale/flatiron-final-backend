Rails.application.routes.draw do
  resources :budgets
  resources :transactions
  resources :categories
  resources :user_categories
  resources :users
  post '/login', to: 'auth#login'
  get '/user', to: 'users#show_user'
end
