class Article < ApplicationRecord

        # Relation
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
        has_many :comments

        # настраиваем валидацию полей (свойств) модели
        validates :title, :text, presence: true
>>>>>>> master
end
