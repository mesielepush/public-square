# frozen_string_literal: true

class LikesController < ApplicationController
  def update
    @like = if current_user.likes.find_by_post_id(params[:post_id]).nil?
              current_user.likes.create(post_id: params[:post_id])
            else
              current_user.likes.find_by_post_id(params[:post_id])
            end
    @like.result = params[:vote].to_i
    @like.save
    @post = Post.find_by_id(params[:post_id])
    @post.counter += params[:vote].to_i
    @post.save
    puts '###########################'
    puts @post.counter
    puts '###########################'
    redirect_to post_show_url(id: @post.id, like: @like.result)
  end
end
