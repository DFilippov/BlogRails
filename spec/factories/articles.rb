FactoryBot.define do
        factory :article do
                title { "Article's title here ======" }
                text { "Some article's text =======" }

                # creating factory named article_with_comments -
                # it will be an article with some comments
                factory :article_with_comments do

                        # after creating an article will be block of code
                        after :create do |article, evaluator|

                                # creating list of 3 comments
                                create_list :element, 3, article: article
                        end
                end
        end
end