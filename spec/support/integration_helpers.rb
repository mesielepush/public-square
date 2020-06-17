module Integration
    def log_in
      visit '/users/sign_in'
      within('form') do
        fill_in 'email', with: 'dvht@test.com'
        fill_in 'password', with: '12345678'
      end
      find('input[id="Log in"]').click
      #click_button 'Log in'
    end
  
    def sign_up
      visit '/users/sign_up'
      within('form') do
        fill_in 'email', with: 'dvht@test.com'
        fill_in 'password', with: '12345678'
        fill_in 'password_confirmation', with: '12345678'
      end
      find('input[id="Sign up"]').click
      #click_button 'Sign Up'
    end
  
    def sign_up_second
      visit '/users/sign_up'
      within('form') do
        fill_in 'email', with: 'dvht2@test.com'
        fill_in 'password', with: '12345678'
        fill_in 'password_confirmation', with: '12345678'
      end
      find('input[name="commit"]').click
      #click_button 'Sign Up'
    end
  
    def log_out
      # click_link 'Sign Out'
      click_link 'LOGOUT'
    end
  end