class PostsController < ApplicationController
    before_action :authenticate_user!
    def new
       
    end
    def create
        @post = Post.new(content: params[:content], counter: params[:counter],user_id: params[:user_id])

        if @post.save

            redirect_to root_url, notice: 'Demand was successfully created.'
        else

        render :show, alert: 'demand was not created.'
        end
    end
    
end
