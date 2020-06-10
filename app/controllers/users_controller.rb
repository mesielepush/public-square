class UsersController < ApplicationController
    before_action :authenticate_user!
    def show
        @post = Post.new
        @user = User.find_by_id(params[:user_id])
    end
    def update
        
    end

    def vote_params
        params.require(:user_id).permit()
    end
end
