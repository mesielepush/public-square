# frozen_string_literal: true
class ListenersController < ApplicationController
  def show
    @user = User.find_by_id(params[:user_id])
    @followers = User.find_by_id(params[:user_id]).listeners
  end

  def vote_params
    params.require(:user_id)
  end
end
