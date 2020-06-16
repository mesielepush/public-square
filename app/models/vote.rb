# frozen_string_literal: true

# == Schema Information
#
# Table name: votes
#
#  id         :bigint           not null, primary key
#  counter    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# This shiny device polishes bared foos
class Vote < ApplicationRecord
  belongs_to :post
end
