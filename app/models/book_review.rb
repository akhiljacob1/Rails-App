class BookReview < ApplicationRecord
  self.table_name = "bookreviews"

  validates :book, presence: true
  validates :body, presence: true, length: { minimum: 3 }
end
