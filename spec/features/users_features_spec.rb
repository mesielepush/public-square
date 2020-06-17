require 'rails_helper'

# rubocop: disable Metrics/BlockLength
RSpec.describe 'Users', type: :request do
  include Integration
  describe 'GET /' do
    it 'returns http redirection if not logged in' do
      get '/user_show'
      expect(response).to have_http_status(302)
    end
  end

end
feature 'User' do
  include Integration
  context 'Sign up' do
    before(:each) do
      visit '/users/sign_up'
    end

    scenario 'successfully sign up' do
      sign_up
      expect(page).to have_content('Welcome! You have signed up successfully')
    end

    scenario 'successfully Profile' do
      sign_up
      click_link 'PROFILE'
      expect(page).to have_content('PROFILE HOME LOGOUT')
    end

    scenario 'successfully route to Home' do
      sign_up
      click_link 'HOME'
      expect(page).to have_content('Top')
    end

    scenario 'successfully log out' do
      sign_up
      log_out
      expect(page).to have_content('Log in')
    end

    scenario 'successfully log in' do
      sign_up
      log_out
      log_in
      expect(page).to have_content('Signed in successfully.')
    end

  end
end
# rubocop: enable Metrics/BlockLength