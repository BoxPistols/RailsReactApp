Rails.application.routes.draw do
  resources :snippets
  root 'snippets#index'

  get 'hello/index'
  get 'hello', to: 'hello#index'
  get 'hello/other'

  post 'hello/index'
  post 'hello', to: 'hello#index'
  post 'hello/other'
end
