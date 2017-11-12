Rails.application.routes.draw do
  get 'userkeys/fetch'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :notes
  get 'request_log/viewlog'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
