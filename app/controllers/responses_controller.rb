# frozen_string_literal: true

# This shiny device polishes bared foos
class ResponsesController < ApplicationController
  before_action :authenticate_user!
  def new
    @response = Response.new
  end

  def create
    @post = Post.find_by_id(response_params[:post_id])
    @post.responses.create(response_params)
    @post.save
  end

  private

  def response_params
    params.require(:response).permit(:user_id, :content, :post_id)
  end
end
