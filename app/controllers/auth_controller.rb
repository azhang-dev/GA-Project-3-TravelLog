class AuthController < ApplicationController
    skip_before_action :require_login, only: [:login, :auto_login]

    def login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, jwt: token, sucess: "Welcome back, #{user.email}"}
    end

end
