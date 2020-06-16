# frozen_string_literal: true

# This shiny device polishes bared foos
class VotesController < ApplicationController
  before_action :authenticate_user!
end
