class Comment < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> testing/rspec

  #Relation
  belongs_to :article

  #Validation
  validates :body, presence: true
  validates :body, length: { maximum: 4000 }

<<<<<<< HEAD
=======
  belongs_to :article
  validates :body, presence: true
>>>>>>> master
=======
>>>>>>> testing/rspec
end
