require 'rails_helper'

describe Comment do

        describe 'validations' do
                it { should validate_presence_of :body }

                it { should validate_length_of :body }
        end

        describe 'associations' do
                it { should belong_to :article }
        end

        # describe '#body' do
        #         it "checks length of comment's body not to be more than 4000 symbols" do
        #                 article = create(:article_with_comments)
        #                 comment = article.last_comment
        #                 body = 'Some long body of comment here'
        #                 comment.body = body
        #                 expect(comment.body.length).to be <= 4000
        #         end
        # end

end