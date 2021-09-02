class BookReview < ApplicationRecord
  self.table_name = "book_reviews"

  validates :body, presence: true, length: { minimum: 3 }
end
