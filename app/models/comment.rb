class Comment < ApplicationRecord

  #Relation
  belongs_to :article

  #Validation
  validates :body, presence: true
  validates :body, length: { maximum: 4000 }

end
