# frozen_string_literal: true

# This shiny device polishes bared foos
class LikesController < ApplicationController
  # rubocop:disable Metrics/AbcSize
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
    redirect_to post_show_url(id: @post.id, like: @like.result)
  end
  # rubocop:enable Metrics/AbcSize
end
