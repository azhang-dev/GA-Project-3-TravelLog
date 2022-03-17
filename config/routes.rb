Rails.application.routes.draw do
 


post '/user_token' => 'user_token#create'
get "/users/current" => "users#current"

get "/users" => "users#index"
post "/user/create" => "users#create"

resources :locations, only: [:create, :show, :update, :destroy]

 
 


# get "/auto_login" => "auth#auto_login"


 
end
