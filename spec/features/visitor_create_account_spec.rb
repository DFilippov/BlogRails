require 'rails_helper'
require './spec/support/session_helper'
require 'database_cleaner/active_record'

DatabaseCleaner.start

feature 'Account Creation' do

        after(:all) do
                DatabaseCleaner.clean
        end

        scenario 'allows guest to create account' do

                sign_up
                expect(page).to have_content( I18n.t 'devise.registrations.signed_up' )

        end


        
end