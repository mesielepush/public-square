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

class Listener < ApplicationRecord
    belongs_to :user
end
