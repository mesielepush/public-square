class ListeningsController < ApplicationController
  def new
    @user = User.find_by_id(params[:current])
    if @user.listenings.new(other_id: params[:other_id]).save
      flash.now[:notice] = "You are slkjdhnfljks"
      redirect_to user_show_url(user_id: params[:other_id])
    else
      flash.now[:notice] = "You are slkjdhnfljks"
      redirect_to user_show_url(user_id: params[:other_id])
    end
  end
  def create
    
  end
  def vote_params
    params.require(:other_id, :current)
end
end
