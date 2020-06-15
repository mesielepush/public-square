# frozen_string_literal: true

class VotesController < ApplicationController
  before_action :authenticate_user!
end
