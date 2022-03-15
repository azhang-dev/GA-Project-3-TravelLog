class UsersController < ApplicationController
    skip_before_action :require_login, only: [:create,:index]

    def index
        # raise "hell"
        render json: User.all
    end

    def create
        user = User.create(user_params)
        if user.valid?
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: user, jwt: token}
        else
            render json: {errors: user.errors.full_message}, status: :not_acceptable
        end
    end


    # def current
    #     render json: current_user
    # end

    

    private
    def user_params
        params.permit(:name, :email, :password, :username)
    end
end
