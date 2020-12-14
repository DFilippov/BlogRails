require 'rails_helper'

feature 'Account Creation' do
        scenario 'allows guest to create account' do
                # visit '/users/sign_up'
                visit new_user_registration_path

                password = 'nobody'

                fill_in :user_email, with: 'user@example.com'
                fill_in :user_username, with: 'username'
                fill_in :user_password, with: password
                fill_in :user_password_confirmation, with: password
                click_button 'Sign up'

                # expect(page).to have_content 'Welcome! You have signed up successfully'
                expect(page).to have_content( I18n.t 'devise.registrations.signed_up' )
        end

end