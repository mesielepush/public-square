# frozen_string_literal: true

# This shiny device polishes bared foos
class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post = Post.new

    @to_follow = Listening.to_follow(current_user.id).first(10).map(&:user)
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to root_url, notice: 'post was successfully created.'
    else
      render :show, alert: 'post was not created.'
    end
  end

  def show
    @post = Post.find_by_id(params[:id])
    @right_bar_on = false
  end

  def index
    @posts = Post.all
    @post = Post.new
  end

  private

  def post_params
    params.require(:post).permit(:counter, :content, :avatar)
  end
end
