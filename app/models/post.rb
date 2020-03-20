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
#

class Post < ApplicationRecord
    belongs_to :user
end
