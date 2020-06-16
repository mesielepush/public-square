# frozen_string_literal: true

# This shiny device polishes bared foos
class ListeningsController < ApplicationController
  # rubocop:disable Metrics/AbcSize
  def new
    @user = User.find_by_id(params[:current])
    if @user.listenings.new(other_id: params[:other_id]).save
      flash.now[:notice] = 'You now follow this member'
      User.find_by_id(params[:other_id]).listeners.new(other_id: @user.id).save
    else
      flash.now[:notice] = 'something happened you are not following this user'
    end
    redirect_to user_show_url(user_id: params[:other_id])
  end
  # rubocop:enable Metrics/AbcSize

  def show
    @user = User.find_by_id(params[:user_id])
    @following = User.find_by_id(params[:user_id]).listenings
  end

  def create; end

  def vote_params
    params.require(:current).permit(:other_id)
  end
end
