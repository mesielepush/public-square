# frozen_string_literal: true
 
# This shiny device polishes bared foos
module UsersHelper
    def new_post_link(user)
        if user.id == current_user.id
            link_to(new_post_url) do
                image_tag("https://i.imgur.com/hAWVdKd.png", id: 'new_post_icon', class: 'img-fluid', alt: 'new post')
            end
        elsif follows_id.include?(user.id.to_s)
            image_tag("https://i.imgur.com/f2EwRe2.png", id: 'new_post_icon', class: 'img-fluid', alt: 'new post')
        
        elsif !follows_id.include?(user.id.to_s)
            link_to(new_listening_url(other_id: @user.id, current: current_user.id)) do
                image_tag('https://i.imgur.com/FSLQPBS.png', id: 'new_post_icon', class: 'img-fluid',alt: 'Follow')
            end
        end

    end

    def follows_id
        current_user.listenings.map{|follow| follow.other_id}
    end

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
    def counter_color(counter)
        if counter > 0
            return 'color:#FE4400'
        end
        'color:#9090F8'
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
