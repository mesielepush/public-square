class ListeningsController < ApplicationController
  def new
    @user = User.find_by_id(params[:current])
    if @user.listenings.new(other_id: params[:other_id]).save
      render alert: 'CASDKKASDKreated.'
    else
      render alert: 'demand was not created.'
    end
  end
  def create
    
  end
  def vote_params
    params.require(:other_id, :current)
end
end
