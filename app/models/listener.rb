# frozen_string_literal: true

# == Schema Information
#
# Table name: listeners
#
#  id         :bigint           not null, primary key
#  other_id   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

# This shiny device polishes bared foos
class Listener < ApplicationRecord
  belongs_to :user
end
