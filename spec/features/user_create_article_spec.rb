require 'rails_helper'
require './spec/support/session_helper'
require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :transaction

feature 'Article Creation' do

        before :all do
                DatabaseCleaner.start
                sign_up
        end

        after(:each) do
                DatabaseCleaner.clean
        end

        scenario 'allows user to visit new article page' do

                visit new_article_path
                expect(page).to have_content 'New article'

        end




end