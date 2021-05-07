require 'rails_helper'

describe Article do
        describe 'validations' do
                it { should validate_presence_of :title }
                it { should validate_presence_of :text }
        end

        describe 'associations' do
                it { should have_many :comments }
        end


        describe '#subject' do
                it 'returns the article title' do
                        article = article_for_test
                        article.title = 'Some Title here ====='

                        expect(article.subject).to eq 'Some Title here ====='
                end
        end

        def article_for_test
                article = create(:article)
                article
        end

        def article_comments_for_test
                article = create(:article_with_comments)
                article
        end

        describe '#last_comment' do

                it "returns last comment's body" do
                        article = article_comments_for_test
                        expect(article.last_comment.body).to eq 'comment body 3'
                end

                it "returns last comment's author" do
                        article = article_comments_for_test
                        expect(article.last_comment.author).to eq 'mike'
                end
        end

        describe '#article_title' do
                it "checks length of article's title not to be more than 140 symbols" do
                        article = article_for_test
                        expect(article.title.length).to be <= 140
                end
        end

        describe '#article_text' do
                it "checks length of article's text not to be more than 4000 symbols" do
                        article = article_for_test
                        expect(article.text.length).to be <= 4000
                end
        end

 end