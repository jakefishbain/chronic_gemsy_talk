Rails.application.routes.draw do
  resources :chrons, only: [:new, :create, :index]
  get '/error', to: 'chrons#error', as: 'error'
  root 'chrons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
