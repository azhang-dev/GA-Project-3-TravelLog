Rails.application.routes.draw do
 

post '/user_token' => 'user_token#create'
get "/users" => "users#index"
post "/users" => "users#create"
#  resource :users, only: [:create]
 
 
#  post "/login" => "auth#login"

#  get "/auto_login" => "auth#auto_login"

#  get "/user_is_authed" => "auth#user_is_authed"
 
end
