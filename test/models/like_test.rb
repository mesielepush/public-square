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

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
