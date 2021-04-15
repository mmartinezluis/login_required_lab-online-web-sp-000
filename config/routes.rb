Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'                   # This route is equivalent to----->   get '/', to: 'sessions#new'
  get '/hello', to: 'sessions#hello'                  # There is no "hello" method in the Sessions controller; however, rails still displays the sessions/hello view.
  post '/', to: 'sessions#create'
  get '/secret', to: 'secrets#show'
  post '/logout', to: 'sessions#destroy'
end
