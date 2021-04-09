Rails.application.routes.draw do
  # get 'questions/index'
  # get 'questions/show'
  # get 'questions/new'
  # get 'questions/edit'
  root 'questions#index'

  resources :questions

  resources :snippets

  get 'hello/index'
  get 'hello', to: 'hello#index'
  get 'hello/other'

  post 'hello/index'
  post 'hello', to: 'hello#index'
  post 'hello/other'
end
