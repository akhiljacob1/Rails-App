class AddUserToBookReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :book_reviews, :user, foreign_key: true
  end
end
