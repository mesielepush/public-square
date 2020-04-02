# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  counter    :integer
#  user_id    :integer
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  avatar     :string
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
