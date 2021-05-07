require 'rails_helper'

feature "Contact Creation" do
        scenario "allows access to contacts page" do
                visit '/contacts'

                expect(page).to have_content( I18n.t 'contacts.contact_us' )
        end

        scenario "allows a guest to create contact" do
                visit '/contacts'

                fill_in :contacts_email, with: 'guest@example.com'
                fill_in :contacts_message, with: 'some message'
                click_button 'Send message'

                expect(page).to have_content 'Thanks!'
        end
end