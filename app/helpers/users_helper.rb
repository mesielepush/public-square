# frozen_string_literal: true

# This shiny device polishes bared foos
module UsersHelper
    def like_ids
        current_user.likes.map{|u| u.post_id }
    end
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

    def up_links(post_id)
        inactive_up = 'https://i.imgur.com/3AJj63r.png'
        active_up ='https://i.imgur.com/QSyr92p.png'
        
        if !like_ids.include?(post_id)
            link_to(likes_update_url(post_id: post_id, vote: 1), id: 'likes_up_link') do
                image_tag(inactive_up, id: 'likes_up')
            end
            
        elsif current_user.likes.find_by_post_id(post_id).result == 1
            image_tag(active_up, id: 'likes_up')
        
        elsif current_user.likes.find_by_post_id(post_id).result == -1
            link_to(likes_update_url(post_id: post_id, vote: 1), id: 'likes_up_link') do
                image_tag(inactive_up, id: 'likes_up')
            end
        end

        
    end
    def down_links(post_id)
        inactive_down='https://i.imgur.com/eoLBqit.png'
        active_down='https://i.imgur.com/Y51wRgl.png'

        if !like_ids.include?(post_id)
            link_to(likes_update_url(post_id: post_id, vote: -1), id: 'likes_down_link') do
                image_tag(inactive_down, id: 'likes_down')
            end
        elsif current_user.likes.find_by_post_id(post_id).result == 1
            link_to(likes_update_url(post_id: post_id, vote: -1), id: 'likes_down_link') do
                image_tag(inactive_down, id: 'likes_down')
            end
        elsif current_user.likes.find_by_post_id(post_id).result == -1
            image_tag(active_down, id: 'likes_down')
        end

    end
end
