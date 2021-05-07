class Comment < ApplicationRecord
<<<<<<< HEAD

  #Relation
  belongs_to :article

  #Validation
  validates :body, presence: true
  validates :body, length: { maximum: 4000 }

=======
  belongs_to :article
  validates :body, presence: true
>>>>>>> master
end
