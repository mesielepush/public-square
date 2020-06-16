# frozen_string_literal: true

# This shiny device polishes bared foos
class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    if params[:current_id] == params[:user_id]
      @user = nil
    else
      @user = User.find_by_id(params[:user_id])
    end
    @post = Post.new
  end

  def index
    if params[:sorted] == 'time_ago'
      @sorted = 'time_ago'
      @posts = Post.order('created_at').reverse.first(10)
    elsif params[:sorted] == 'counter'
      @sorted = 'counter'
      @posts = Post.order('counter').last(8).reverse
    else
      @posts = Post.last(5)
    end
    @post = Post.new
  end

  def update; end

  def vote_params
    params.require(:user_id, :current_id).permit(:sorted)
  end
end
