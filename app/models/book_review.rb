class BookReview < ApplicationRecord
  self.table_name = "book_reviews"

  validates :book_id, presence: true
  validates :body, presence: true, length: { minimum: 3 }
  validates :user_id, presence: true
end
