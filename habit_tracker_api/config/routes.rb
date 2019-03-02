Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/secondnature', to: 'secondnature#index'
  get '/secondnature/:id', to: 'secondnature#show'
  post '/secondnature', to: 'secondnature#create'
  delete '/secondnature/:id', to: 'secondnature#delete'
  put '/secondnature/:id', to: 'secondnature#update'
end
