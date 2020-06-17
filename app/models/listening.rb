# frozen_string_literal: true

# == Schema Information
#
# Table name: listenings
#
#  id         :bigint           not null, primary key
#  other_id   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

# This shiny device polishes bared foos
class Listening < ApplicationRecord
  belongs_to :user
  validates :other_id, presence: true
end
