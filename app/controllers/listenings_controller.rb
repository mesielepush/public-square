# frozen_string_literal: true

# This shiny device polishes bared foos
class ListeningsController < ApplicationController
  # rubocop:disable Metrics/AbcSize
  def new
    @user = User.find_by_id(params[:current])
    if @user.listenings.new(other_id: params[:other_id]).save
      flash.now[:notice] = 'You now follow this member'
      
    else
      flash.now[:notice] = 'something happened you are not following this user'
    end
    redirect_to user_show_url(user_id: params[:other_id])
  end
  # rubocop:enable Metrics/AbcSize

  def show
    @user = User.find_by_id(params[:user_id])
  end

  def show_followers
    @user = User.find_by_id(params[:user_id])
  end

  def create; end

  def destroy
    following = Listening.find_by(user_id: current_user.id,
                                  other_id: params[:other_id]).destroy
    redirect_back(fallback_location: root_path, notice: "You are not following that horrible user anymore")
    
  end
  def vote_params
    params.require(:current).permit(:other_id)
  end
end
