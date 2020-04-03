# == Schema Information
#
# Table name: listenings
#
#  id         :bigint           not null, primary key
#  other_id   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Listening < ApplicationRecord
end
