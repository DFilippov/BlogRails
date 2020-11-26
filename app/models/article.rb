class Article < ApplicationRecord

        # Relation
        belongs_to :user
        has_many :comments

        # настраиваем валидацию полей (свойств) модели
        validates :title, :text, presence: true
end
