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

require 'test_helper'

class ListeningTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
