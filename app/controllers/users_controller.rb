class UsersController < ApplicationController
    # skip_before_action :require_login, only: [:create,:index]
    before_action :authenticate_user, except:[:create]

    def current
        render json: current_user
    end

    def index
        # raise "hell"
        render json: User.all
    end

    def create
        user = User.create(name: params[:name], email: params[:email], password: params[:password])
        if user.save
           
            render json: user
        else
            render json: {error: "Could not create user"}, status: 402
        end
    end


    private
    def user_params
        params.require(:_json).permit(:name, :email, :password)
    end
end
