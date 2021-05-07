class Article < ApplicationRecord

        # Relation
<<<<<<< HEAD
<<<<<<< HEAD
        belongs_to :user , optional: :true
        has_many :comments

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
=======
        belongs_to :user
<<<<<<< HEAD
=======
        belongs_to :user , optional: :true
>>>>>>> testing/rspec
        has_many :comments
=======
        has_many :comments, dependent: :destroy
>>>>>>> improvementUI

        # Validation
        validates :title, :text, presence: true
<<<<<<< HEAD
>>>>>>> master
=======
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
>>>>>>> testing/rspec
end
