class Article < ApplicationRecord

        # Switch SearchKick Gem On for the model
        searchkick

        # Relation

        belongs_to :user , optional: :true
        has_many :comments, dependent: :destroy

        # Validation
        validates :title, :text, presence: true
        validates :title, length: { maximum: 140 }
        validates :text, length: { maximum: 4000 }

        # Testing methods
        def subject
                title
        end

        def article_title
                title
        end

        def article_text
                text
        end

        def last_comment
                comments.last
        end

end
