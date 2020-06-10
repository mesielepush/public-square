class UsersController < ApplicationController
    before_action :authenticate_user!
    def show
        if params[:current_id] == params[:user_id]
            @post = Post.new
            @user = nil
        else
            @post = Post.new
            @user = User.find_by_id(params[:user_id])
        end
    end
    def update
        
    end

    def vote_params
        params.require(:user_id, :current_id).permit()
    end
end
