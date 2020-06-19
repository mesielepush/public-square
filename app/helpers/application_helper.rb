# frozen_string_literal: true

module ApplicationHelper
  def main_logo
    return 'position:relative;left:-25rem' if current_user

    ''
  end

  def left_bar
    render 'layouts/leftbar' if current_user
  end
end
