# frozen_string_literal: true

module ApplicationHelper
    
    def main_logo
        if current_user
            return 'position:relative;left:-25rem'
        end
        ''
    end
    def left_bar
        if current_user
            render 'layouts/leftbar'
        end
    end
    

end
