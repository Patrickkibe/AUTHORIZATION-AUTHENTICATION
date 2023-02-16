Rails.application.routes.draw do
  
get '/cookies', to: "app_cookies#show"

get '/cookies/create/:data', to: "app_cookies#create"

get '/cookies/create_other/:data', to: "app_cookies#create_other"


get '/sessions', to: "app_sessions#show"
get '/sessions/create/:uid', to:"app_sessions#create"
get '/sessions/create_other/:username', to:"app_sessions#create_other"


post '/customers/login', to:"customers#login"
delete '/customers/logout', to:"customers#logout"
get '/customers/show', to: "customers#show"

end
