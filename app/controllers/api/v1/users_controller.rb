class Api::V1::UsersController < ApplicationController
    def index
        users=User.all
        render json: users
    end

    def show
        user=User.find(params[:id])
        render json: user
    end

    def create
        user=User.create(
            user_email: params[:user_email],
            password: params[:password]
        )
        #  if user.valid?
        #     token = encode_token(user.id)
            render json: {user: user, token: token}
        #  else 
        #     render json: {errors: user.errors.full_messages}
        #  end
    end
end
