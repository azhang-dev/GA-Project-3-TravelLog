class UsersController < ApplicationController
    # skip_before_action :require_login, only: [:create,:index]
    before_action :authenticate_user, except:[:create, :index]

    def current
        render json: current_user
    end

    def index
        render json: User.all
    end

    def create
        
        user = User.create(name: params[:name], email: params[:email], password: params[:password])
        puts user
        if user.persisted?
           auth_token = Knock::AuthToken.new payload: { sub: user.id }
            render json: {user: user, jwt: auth_token.token }
        else
            render json: {error: "Could not create user"}, status: 402
        end
    end

    def destroy
        User.destroy params[:id]
    end


    private

    def user_params
        params.require(:_json).permit(:name, :email, :password)
    end
end
