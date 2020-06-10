class UsersController < ApplicationController
    before_action :authenticate_user!
    def show
        @post = Post.new
        @user = params[:user_id]
    end
    def update
        
    end
    # Update function
    # make a 
end
