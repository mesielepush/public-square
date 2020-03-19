# == Schema Information
#
# Table name: votes
#
#  id         :bigint           not null, primary key
#  counter    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ApplicationRecord
    
end
