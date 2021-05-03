FactoryBot.define do
        factory :comment do
                author { 'mike' }
                sequence(:body) { |i| "comment body #{i}"}
        end
end