Rails.application.routes.draw do
 

  get 'locations/create'
  get 'locations/index'
  get 'locations/edit'
  get 'locations/update'
  get 'locations/destroy'
post '/user_token' => 'user_token#create'
get "/users/current" => "users#current"

get "/users" => "users#index"
post "/user/create" => "users#create"



 
 


# get "/auto_login" => "auth#auto_login"


 
end
