# frozen_string_literal: true

# This shiny device polishes bared foos
module ListeningsHelper
  def followers(user)
    ids = Listening.where(other_id: user).pluck(:user_id)
    User.find(ids)
  end

  def followers_count(user)
    Listening.where(other_id: user).pluck(:user_id).count
  end

  def following(user)
    ids = Listening.where(user_id: user).pluck(:other_id)
    User.find(ids)
  end
end
