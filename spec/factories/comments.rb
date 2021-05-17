FactoryBot.define do
        factory :element do
                author { 'mike' }
                sequence(:body) { |i| "comment body #{i}"}
        end
end