Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/pages/privacy'
  get 'pages/success'
  get 'pages/fail'
  get 'pages/pdf'
  resources :pages, only: [:create, :get]
end
