class LikesController < ApplicationController
    def update
        if current_user.likes.find_by_post_id(params[:post_id]) == nil
            current_user.likes.create(post_id: params[:post_id], result: params[:vote])
        else
            @like  = current_user.likes.find_by_post_id(params[:post_id])
            @like.result = params[:vote]
            @post = Post.find_by_id(params[:post_id])
            @post.counter += params[:vote]
            puts '###########################'
            puts @post.counter
            puts '###########################'

        end
    end
end
