class AddUserToBookReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :book_reviews, :user, type: :string, foreign_key: true
  end
end
