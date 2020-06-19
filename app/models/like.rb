# frozen_string_literal: true

# This shiny device polishes bared foos
class Like < ApplicationRecord
  belongs_to :user
  validates :post_id, presence: true
end
