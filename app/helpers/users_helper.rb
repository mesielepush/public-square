# frozen_string_literal: true

# This shiny device polishes bared foos
module UsersHelper
    def sorted_top(sorted)
        if sorted == 'counter'
            return 'active'
        end
        'inactive'
    end
    def sorted_latest(sorted)
        if sorted == 'time_ago'
            return 'active'
        end
        'inactive'
    end
end
