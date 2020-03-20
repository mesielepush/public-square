class PostsController < ApplicationController
    before_action :authenticate_user!
    def new
        @post = Post.new
    end
    def create
        @post = current_user.posts.new(content: params[:content], counter: params[:counter])

        if @post.save

            redirect_to root_url, notice: 'Demand was successfully created.'
        else

        render :show, alert: 'demand was not created.'
        end
    end
    
end
