require 'rails_helper'

feature 'Post' do
  include Integration
  context 'Liking Post' do
    before(:each) do
      visit '/users/sign_up'
      sign_up
      
      within('form') do
        fill_in 'content', with: 'Testing posts'
        fill_in 'avatar', with: 'https://ab.co/2XZxLGQ'

      end
      find('input[id="commit"]').click
    end

    scenario 'Expect Post to have 0 likes' do
      expect(page).to have_content('0')
    end
    
    scenario 'Dislike a Post' do
        expect(page).to have_content('0')
        first(:css, '#likes_down_link').click
        expect(page).to have_content('-1')
    end

    scenario 'Like a Post' do
      expect(page).to have_content('0')
      first(:css, '#likes_up_link').click
      expect(page).to have_content('1')
    end

    
  end
end
