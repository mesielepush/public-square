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
    def index
        if params[:sorted] == 'time_ago'
            @sorted = 'time_ago'
            @posts = Post.order('created_at').reverse.first(10)
            @post = Post.new
        elsif params[:sorted] == 'counter'
            @sorted = 'counter'
            @post = Post.new
            @posts = Post.order('counter').last(8).reverse
        else
            @post = Post.new
            @posts = Post.last(5)
        end
    end
    def update
        
    end

    def vote_params
        params.require(:user_id, :current_id).permit(:sorted)
    end
end
