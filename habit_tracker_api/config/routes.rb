Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/habits', to: 'habits#index'
  get '/habits/:id', to: 'habits#show'
  post '/habits', to: 'habits#create'
  delete '/habits/:id', to: 'habits#delete'
  put '/habits/:id', to: 'habits#update'
end
