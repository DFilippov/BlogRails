class AddReferenceArticleToUser < ActiveRecord::Migration[6.0]
  def change

    add_reference :articles, :user, foreign_keys: true, null: false, default: 0

  end
end
