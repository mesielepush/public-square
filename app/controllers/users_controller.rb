class UsersController < ApplicationController
    before_action :authenticate_user!
    def show
        @post = Post.new
        @posts = Post.all
    end
    
end
