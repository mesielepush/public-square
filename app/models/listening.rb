# frozen_string_literal: true

# This shiny device polishes bared foos
class Listening < ApplicationRecord
  scope :to_follow, ->(user_id) { includes(:user).where.not(other_id: user_id) }
  belongs_to :user
  validates :other_id, presence: true
end
