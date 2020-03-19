class VotesController < ApplicationController
    before_action :authenticate_user!
end
