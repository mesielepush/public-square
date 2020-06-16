# frozen_string_literal: true

# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  post_id    :integer
#  result     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

# This shiny device polishes bared foos
class Like < ApplicationRecord
  belongs_to :user
end
