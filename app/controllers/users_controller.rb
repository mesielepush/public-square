# frozen_string_literal: true

# This shiny device polishes bared foos
class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = if params[:current_id] == params[:user_id]
              nil
            else
              User.find_by_id(params[:user_id])
            end
    @post = Post.new
  end

  def index
    @current_user_likes = current_user.likes
    @to_follow = Listening.to_follow(current_user.id).first(10).map(&:user)
    if params[:sorted] == 'time_ago'
      @sorted = 'time_ago'
      @posts = Post.includes(:user).order(created_at: :desc).first(10)

    elsif params[:sorted] == 'counter'
      @sorted = 'counter'
      @posts = Post.includes(:user).order(counter: :desc).first(8)

    else
      @posts = Post.includes(:user).limit(5)
    end
    @post = Post.new
  end

  def update; end

  def vote_params
    params.require(:user_id, :current_id).permit(:sorted)
  end
end
