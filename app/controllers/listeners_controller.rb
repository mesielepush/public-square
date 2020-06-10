class ListenersController < ApplicationController
    def show
        @followers =  User.find_by_id(params[:user_id]).listeners
    end
    def vote_params
        params.require(:user_id)
    end
end
