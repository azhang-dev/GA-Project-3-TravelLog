Rails.application.routes.draw do
 

post '/user_token' => 'user_token#create'
get "/users" => "users#index"
post "/users" => "users#create"
#  resource :users, only: [:create]
 
 


# get "/auto_login" => "auth#auto_login"


 
end
